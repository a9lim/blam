import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153463542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))))
private theorem no_v701153463542 : ¬ MinimalInterpreter v701153463542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153463158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))))
private theorem no_v701153463158 : ¬ MinimalInterpreter v701153463158 :=
  cost_cut false 2 (by decide)
private def v701153457398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))))
private theorem no_v701153457398 : ¬ MinimalInterpreter v701153457398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153457014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))))
private theorem no_v701153457014 : ¬ MinimalInterpreter v701153457014 :=
  cost_cut false 2 (by decide)
private def v701153455478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))))
private theorem no_v701153455478 : ¬ MinimalInterpreter v701153455478 :=
  cost_cut false 2 (by decide)
private def v701153610998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))))
private theorem no_v701153610998 : ¬ MinimalInterpreter v701153610998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))
private def v701153610614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))))
private theorem no_v701153610614 : ¬ MinimalInterpreter v701153610614 :=
  cost_cut false 2 (by decide)
private def v701154200822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))))
private theorem no_v701154200822 : ¬ MinimalInterpreter v701154200822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))))
private def v701154200438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))))
private theorem no_v701154200438 : ¬ MinimalInterpreter v701154200438 :=
  cost_cut false 2 (by decide)
theorem row216 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,2,1]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,2,1] = [v701153463542,v701153463158,v701153457398,v701153457014,v701153455478,v701153610998,v701153610614,v701154200822,v701154200438] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153463542) (.cons (no_v701153463158) (.cons (no_v701153457398) (.cons (no_v701153457014) (.cons (no_v701153455478) (.cons (no_v701153610998) (.cons (no_v701153610614) (.cons (no_v701154200822) (.cons (no_v701154200438) .nil)))))))))

theorem row217 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,3,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701153463918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))))
private theorem no_v701153463918 : ¬ MinimalInterpreter v701153463918 :=
  cost_cut false 2 (by decide)
private def v701153463214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))))
private theorem no_v701153463214 : ¬ MinimalInterpreter v701153463214 :=
  cost_cut false 2 (by decide)
private def v701153457774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))))
private theorem no_v701153457774 : ¬ MinimalInterpreter v701153457774 :=
  cost_cut false 2 (by decide)
private def v701153457070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))))
private theorem no_v701153457070 : ¬ MinimalInterpreter v701153457070 :=
  cost_cut false 2 (by decide)
private def v701153455534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))))
private theorem no_v701153455534 : ¬ MinimalInterpreter v701153455534 :=
  cost_cut false 2 (by decide)
private def v701153611374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))
private theorem no_v701153611374 : ¬ MinimalInterpreter v701153611374 :=
  cost_cut false 2 (by decide)
private def v701153610670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))
private theorem no_v701153610670 : ¬ MinimalInterpreter v701153610670 :=
  cost_cut false 2 (by decide)
private def v701154201198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))
private theorem no_v701154201198 : ¬ MinimalInterpreter v701154201198 :=
  cost_cut false 2 (by decide)
private def v701154200494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))
private theorem no_v701154200494 : ¬ MinimalInterpreter v701154200494 :=
  cost_cut false 2 (by decide)
theorem row218 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,1,0,2]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,1,0,2] = [v701153463918,v701153463214,v701153457774,v701153457070,v701153455534,v701153611374,v701153610670,v701154201198,v701154200494] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153463918) (.cons (no_v701153463214) (.cons (no_v701153457774) (.cons (no_v701153457070) (.cons (no_v701153455534) (.cons (no_v701153611374) (.cons (no_v701153610670) (.cons (no_v701154201198) (.cons (no_v701154200494) .nil)))))))))

theorem row219 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,1,1,1]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701153463930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))))
private theorem no_v701153463930 : ¬ MinimalInterpreter v701153463930 :=
  cost_cut false 2 (by decide)
private def v701153463226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))))
private theorem no_v701153463226 : ¬ MinimalInterpreter v701153463226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153457786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))))
private theorem no_v701153457786 : ¬ MinimalInterpreter v701153457786 :=
  cost_cut false 2 (by decide)
private def v701153457082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))))
private theorem no_v701153457082 : ¬ MinimalInterpreter v701153457082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153455546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))))
private theorem no_v701153455546 : ¬ MinimalInterpreter v701153455546 :=
  cost_cut false 2 (by decide)
private def v701153611386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))))
private theorem no_v701153611386 : ¬ MinimalInterpreter v701153611386 :=
  cost_cut false 2 (by decide)
private def v701153610682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))))
private theorem no_v701153610682 : ¬ MinimalInterpreter v701153610682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))
private def v701154201210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))))
private theorem no_v701154201210 : ¬ MinimalInterpreter v701154201210 :=
  cost_cut false 2 (by decide)
private def v701154200506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))))
private theorem no_v701154200506 : ¬ MinimalInterpreter v701154200506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))))
theorem row220 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,1,2,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,1,2,0] = [v701153463930,v701153463226,v701153457786,v701153457082,v701153455546,v701153611386,v701153610682,v701154201210,v701154200506] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153463930) (.cons (no_v701153463226) (.cons (no_v701153457786) (.cons (no_v701153457082) (.cons (no_v701153455546) (.cons (no_v701153611386) (.cons (no_v701153610682) (.cons (no_v701154201210) (.cons (no_v701154200506) .nil)))))))))

private def v701153464118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))))
private theorem no_v701153464118 : ¬ MinimalInterpreter v701153464118 :=
  cost_cut false 2 (by decide)
private def v701153463254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))))
private theorem no_v701153463254 : ¬ MinimalInterpreter v701153463254 :=
  cost_cut false 2 (by decide)
private def v701153457974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))))
private theorem no_v701153457974 : ¬ MinimalInterpreter v701153457974 :=
  cost_cut false 2 (by decide)
private def v701153457110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))))
private theorem no_v701153457110 : ¬ MinimalInterpreter v701153457110 :=
  cost_cut false 2 (by decide)
private def v701153455574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))))
private theorem no_v701153455574 : ¬ MinimalInterpreter v701153455574 :=
  cost_cut false 2 (by decide)
private def v701153611574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))))
private theorem no_v701153611574 : ¬ MinimalInterpreter v701153611574 :=
  cost_cut false 2 (by decide)
private def v701153610710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))))
private theorem no_v701153610710 : ¬ MinimalInterpreter v701153610710 :=
  cost_cut false 2 (by decide)
private def v701154201398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))))
private theorem no_v701154201398 : ¬ MinimalInterpreter v701154201398 :=
  cost_cut false 2 (by decide)
private def v701154200534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))))
private theorem no_v701154200534 : ¬ MinimalInterpreter v701154200534 :=
  cost_cut false 2 (by decide)
theorem row221 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,2,0,1]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,2,0,1] = [v701153464118,v701153463254,v701153457974,v701153457110,v701153455574,v701153611574,v701153610710,v701154201398,v701154200534] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153464118) (.cons (no_v701153463254) (.cons (no_v701153457974) (.cons (no_v701153457110) (.cons (no_v701153455574) (.cons (no_v701153611574) (.cons (no_v701153610710) (.cons (no_v701154201398) (.cons (no_v701154200534) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
