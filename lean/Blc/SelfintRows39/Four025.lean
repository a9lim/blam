import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700952137530 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v700952137530 : ¬ MinimalInterpreter v700952137530 :=
  cost_cut false 2 (by decide)
private def v700952136666 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v700952136666 : ¬ MinimalInterpreter v700952136666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700952131386 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v700952131386 : ¬ MinimalInterpreter v700952131386 :=
  cost_cut false 2 (by decide)
private def v700952130522 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v700952130522 : ¬ MinimalInterpreter v700952130522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700952128986 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v700952128986 : ¬ MinimalInterpreter v700952128986 :=
  cost_cut false 2 (by decide)
private def v700952284986 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v700952284986 : ¬ MinimalInterpreter v700952284986 :=
  cost_cut false 2 (by decide)
private def v700952284122 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v700952284122 : ¬ MinimalInterpreter v700952284122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v700952874810 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v700952874810 : ¬ MinimalInterpreter v700952874810 :=
  cost_cut false 2 (by decide)
private def v700952873946 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v700952873946 : ¬ MinimalInterpreter v700952873946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v699341524794 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v699341524794 : ¬ MinimalInterpreter v699341524794 :=
  chain_cut false 3 (by decide)
private def v699341523930 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v699341523930 : ¬ MinimalInterpreter v699341523930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341518650 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v699341518650 : ¬ MinimalInterpreter v699341518650 :=
  chain_cut false 3 (by decide)
private def v699341517786 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v699341517786 : ¬ MinimalInterpreter v699341517786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341516250 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v699341516250 : ¬ MinimalInterpreter v699341516250 :=
  chain_cut false 3 (by decide)
private def v699341672250 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v699341672250 : ¬ MinimalInterpreter v699341672250 :=
  chain_cut false 3 (by decide)
private def v699341671386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v699341671386 : ¬ MinimalInterpreter v699341671386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v699342262074 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v699342262074 : ¬ MinimalInterpreter v699342262074 :=
  cost_cut false 4 (by decide)
private def v699342261210 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v699342261210 : ¬ MinimalInterpreter v699342261210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem row150 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,2,1,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,2,1,0] = [v700952137530,v700952136666,v700952131386,v700952130522,v700952128986,v700952284986,v700952284122,v700952874810,v700952873946,v699341524794,v699341523930,v699341518650,v699341517786,v699341516250,v699341672250,v699341671386,v699342262074,v699342261210] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952137530) (.cons (no_v700952136666) (.cons (no_v700952131386) (.cons (no_v700952130522) (.cons (no_v700952128986) (.cons (no_v700952284986) (.cons (no_v700952284122) (.cons (no_v700952874810) (.cons (no_v700952873946) (.cons (no_v699341524794) (.cons (no_v699341523930) (.cons (no_v699341518650) (.cons (no_v699341517786) (.cons (no_v699341516250) (.cons (no_v699341672250) (.cons (no_v699341671386) (.cons (no_v699342262074) (.cons (no_v699342261210) .nil))))))))))))))))))

theorem row151 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,3,0,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v700952143470 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v700952143470 : ¬ MinimalInterpreter v700952143470 :=
  cost_cut false 2 (by decide)
private def v700952143278 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v700952143278 : ¬ MinimalInterpreter v700952143278 :=
  cost_cut false 2 (by decide)
private def v700952132206 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v700952132206 : ¬ MinimalInterpreter v700952132206 :=
  cost_cut false 2 (by decide)
private def v700952132014 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v700952132014 : ¬ MinimalInterpreter v700952132014 :=
  cost_cut false 2 (by decide)
private def v700952129198 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v700952129198 : ¬ MinimalInterpreter v700952129198 :=
  cost_cut false 2 (by decide)
private def v699341530734 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v699341530734 : ¬ MinimalInterpreter v699341530734 :=
  chain_cut false 3 (by decide)
private def v699341530542 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v699341530542 : ¬ MinimalInterpreter v699341530542 :=
  chain_cut false 3 (by decide)
private def v699341519470 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v699341519470 : ¬ MinimalInterpreter v699341519470 :=
  chain_cut false 3 (by decide)
private def v699341519278 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v699341519278 : ¬ MinimalInterpreter v699341519278 :=
  chain_cut false 3 (by decide)
private def v699341516462 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v699341516462 : ¬ MinimalInterpreter v699341516462 :=
  chain_cut false 3 (by decide)
theorem row152 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,0,0,2]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,0,0,2] = [v700952143470,v700952143278,v700952132206,v700952132014,v700952129198,v699341530734,v699341530542,v699341519470,v699341519278,v699341516462] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952143470) (.cons (no_v700952143278) (.cons (no_v700952132206) (.cons (no_v700952132014) (.cons (no_v700952129198) (.cons (no_v699341530734) (.cons (no_v699341530542) (.cons (no_v699341519470) (.cons (no_v699341519278) (.cons (no_v699341516462) .nil))))))))))

theorem row153 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,0,1,1]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v700952143482 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v700952143482 : ¬ MinimalInterpreter v700952143482 :=
  cost_cut false 2 (by decide)
private def v700952143290 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v700952143290 : ¬ MinimalInterpreter v700952143290 :=
  cost_cut false 2 (by decide)
private def v700952132218 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v700952132218 : ¬ MinimalInterpreter v700952132218 :=
  cost_cut false 2 (by decide)
private def v700952132026 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v700952132026 : ¬ MinimalInterpreter v700952132026 :=
  cost_cut false 2 (by decide)
private def v700952129210 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v700952129210 : ¬ MinimalInterpreter v700952129210 :=
  cost_cut false 2 (by decide)
private def v699341530746 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v699341530746 : ¬ MinimalInterpreter v699341530746 :=
  chain_cut false 3 (by decide)
private def v699341530554 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v699341530554 : ¬ MinimalInterpreter v699341530554 :=
  chain_cut false 3 (by decide)
private def v699341519482 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v699341519482 : ¬ MinimalInterpreter v699341519482 :=
  chain_cut false 3 (by decide)
private def v699341519290 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v699341519290 : ¬ MinimalInterpreter v699341519290 :=
  chain_cut false 3 (by decide)
private def v699341516474 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v699341516474 : ¬ MinimalInterpreter v699341516474 :=
  chain_cut false 3 (by decide)
theorem row154 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,0,2,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,0,2,0] = [v700952143482,v700952143290,v700952132218,v700952132026,v700952129210,v699341530746,v699341530554,v699341519482,v699341519290,v699341516474] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952143482) (.cons (no_v700952143290) (.cons (no_v700952132218) (.cons (no_v700952132026) (.cons (no_v700952129210) (.cons (no_v699341530746) (.cons (no_v699341530554) (.cons (no_v699341519482) (.cons (no_v699341519290) (.cons (no_v699341516474) .nil))))))))))

theorem row155 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,1,0,1]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
