import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v691154252598 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v691154252598 : ¬ MinimalInterpreter v691154252598 :=
  cost_cut false 2 (by decide)
private def v691154252502 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v691154252502 : ¬ MinimalInterpreter v691154252502 :=
  cost_cut false 2 (by decide)
private def v691154238774 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v691154238774 : ¬ MinimalInterpreter v691154238774 :=
  cost_cut false 2 (by decide)
private def v691154238678 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v691154238678 : ¬ MinimalInterpreter v691154238678 :=
  cost_cut false 2 (by decide)
private def v691154235222 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v691154235222 : ¬ MinimalInterpreter v691154235222 :=
  cost_cut false 2 (by decide)
theorem row438 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [2,0,0,1]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [2,0,0,1] = [v691154252598,v691154252502,v691154238774,v691154238678,v691154235222] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154252598) (.cons (no_v691154252502) (.cons (no_v691154238774) (.cons (no_v691154238678) (.cons (no_v691154235222) .nil)))))

private def v691154252602 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v691154252602 : ¬ MinimalInterpreter v691154252602 :=
  cost_cut false 2 (by decide)
private def v691154252506 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v691154252506 : ¬ MinimalInterpreter v691154252506 :=
  cost_cut false 2 (by decide)
private def v691154238778 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v691154238778 : ¬ MinimalInterpreter v691154238778 :=
  cost_cut false 2 (by decide)
private def v691154238682 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v691154238682 : ¬ MinimalInterpreter v691154238682 :=
  cost_cut false 2 (by decide)
private def v691154235226 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v691154235226 : ¬ MinimalInterpreter v691154235226 :=
  cost_cut false 2 (by decide)
theorem row439 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [2,0,1,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [2,0,1,0] = [v691154252602,v691154252506,v691154238778,v691154238682,v691154235226] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154252602) (.cons (no_v691154252506) (.cons (no_v691154238778) (.cons (no_v691154238682) (.cons (no_v691154235226) .nil)))))

private def v691154252698 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v691154252698 : ¬ MinimalInterpreter v691154252698 :=
  cost_cut false 2 (by decide)
private def v691154252522 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v691154252522 : ¬ MinimalInterpreter v691154252522 :=
  cost_cut false 2 (by decide)
private def v691154238874 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v691154238874 : ¬ MinimalInterpreter v691154238874 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v691154238698 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v691154238698 : ¬ MinimalInterpreter v691154238698 :=
  cost_cut false 2 (by decide)
private def v691154235242 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v691154235242 : ¬ MinimalInterpreter v691154235242 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row440 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [2,1,0,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [2,1,0,0] = [v691154252698,v691154252522,v691154238874,v691154238698,v691154235242] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154252698) (.cons (no_v691154252522) (.cons (no_v691154238874) (.cons (no_v691154238698) (.cons (no_v691154235242) .nil)))))

theorem row441 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [3,0,0,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row442 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,0,3]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690684480750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v690684480750 : ¬ MinimalInterpreter v690684480750 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684480366 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v690684480366 : ¬ MinimalInterpreter v690684480366 :=
  cost_cut false 1 (by decide)
private def v690684474606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v690684474606 : ¬ MinimalInterpreter v690684474606 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684474222 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v690684474222 : ¬ MinimalInterpreter v690684474222 :=
  cost_cut false 1 (by decide)
private def v690684472686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v690684472686 : ¬ MinimalInterpreter v690684472686 :=
  cost_cut false 1 (by decide)
private def v690684628206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v690684628206 : ¬ MinimalInterpreter v690684628206 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v690684627822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v690684627822 : ¬ MinimalInterpreter v690684627822 :=
  cost_cut false 1 (by decide)
private def v690685218030 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v690685218030 : ¬ MinimalInterpreter v690685218030 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v690685217646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v690685217646 : ¬ MinimalInterpreter v690685217646 :=
  cost_cut false 1 (by decide)
theorem row443 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,1,2]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,1,2] = [v690684480750,v690684480366,v690684474606,v690684474222,v690684472686,v690684628206,v690684627822,v690685218030,v690685217646] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684480750) (.cons (no_v690684480366) (.cons (no_v690684474606) (.cons (no_v690684474222) (.cons (no_v690684472686) (.cons (no_v690684628206) (.cons (no_v690684627822) (.cons (no_v690685218030) (.cons (no_v690685217646) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
