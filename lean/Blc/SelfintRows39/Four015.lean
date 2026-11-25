import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701157358838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v701157358838 : ¬ MinimalInterpreter v701157358838 :=
  chain_cut false 2 (by decide)
private def v701157355382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v701157355382 : ¬ MinimalInterpreter v701157355382 :=
  chain_cut false 2 (by decide)
private def v701157404918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v701157404918 : ¬ MinimalInterpreter v701157404918 :=
  chain_cut false 4 (by decide)
private def v701156520182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v701156520182 : ¬ MinimalInterpreter v701156520182 :=
  w_cut false 0 (by decide)
theorem row90 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,2,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,2,1] = [v701157358838,v701157355382,v701157404918,v701156520182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157358838) (.cons (no_v701157355382) (.cons (no_v701157404918) (.cons (no_v701156520182) .nil))))

private def v701154409722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v701154409722 : ¬ MinimalInterpreter v701154409722 :=
  chain_cut false 2 (by decide)
private def v701154406266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v701154406266 : ¬ MinimalInterpreter v701154406266 :=
  chain_cut false 2 (by decide)
private def v701154188538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 3) (.var 0))))))))
private theorem no_v701154188538 : ¬ MinimalInterpreter v701154188538 :=
  chain_cut false 2 (by decide)
private def v701154185082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 0)))))))
private theorem no_v701154185082 : ¬ MinimalInterpreter v701154185082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154129786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 0)))))))
private theorem no_v701154129786 : ¬ MinimalInterpreter v701154129786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701157358842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v701157358842 : ¬ MinimalInterpreter v701157358842 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157355386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v701157355386 : ¬ MinimalInterpreter v701157355386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.app (.var 2) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701156495226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))
private theorem no_v701156495226 : ¬ MinimalInterpreter v701156495226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row91 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,3,0]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,3,0] = [v701154409722,v701154406266,v701154188538,v701154185082,v701154129786,v701157358842,v701157355386,v701156495226] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154409722) (.cons (no_v701154406266) (.cons (no_v701154188538) (.cons (no_v701154185082) (.cons (no_v701154129786) (.cons (no_v701157358842) (.cons (no_v701157355386) (.cons (no_v701156495226) .nil))))))))

private def v701154410094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v701154410094 : ¬ MinimalInterpreter v701154410094 :=
  chain_cut false 2 (by decide)
private def v701154406318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v701154406318 : ¬ MinimalInterpreter v701154406318 :=
  chain_cut false 2 (by decide)
private def v701154188910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 2))))))))
private theorem no_v701154188910 : ¬ MinimalInterpreter v701154188910 :=
  chain_cut false 2 (by decide)
private def v701154185134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 2)))))))
private theorem no_v701154185134 : ¬ MinimalInterpreter v701154185134 :=
  chain_cut false 2 (by decide)
private def v701154129838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 2)))))))
private theorem no_v701154129838 : ¬ MinimalInterpreter v701154129838 :=
  chain_cut false 2 (by decide)
private def v701157359214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v701157359214 : ¬ MinimalInterpreter v701157359214 :=
  chain_cut false 8 (by decide)
private def v701157355438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v701157355438 : ¬ MinimalInterpreter v701157355438 :=
  w_cut false 0 (by decide)
theorem row92 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,3,0,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,3,0,2] = [v701154410094,v701154406318,v701154188910,v701154185134,v701154129838,v701157359214,v701157355438] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154410094) (.cons (no_v701154406318) (.cons (no_v701154188910) (.cons (no_v701154185134) (.cons (no_v701154129838) (.cons (no_v701157359214) (.cons (no_v701157355438) .nil)))))))

private def v701154410102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 1) (.var 1)))))))))
private theorem no_v701154410102 : ¬ MinimalInterpreter v701154410102 :=
  chain_cut false 2 (by decide)
private def v701154406326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 1)) (.var 1))))))))
private theorem no_v701154406326 : ¬ MinimalInterpreter v701154406326 :=
  chain_cut false 2 (by decide)
private def v701154188918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 1) (.var 1))))))))
private theorem no_v701154188918 : ¬ MinimalInterpreter v701154188918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 2) (.app (.var 1) (.var 1))))) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154185142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 1))) (.var 1)))))))
private theorem no_v701154185142 : ¬ MinimalInterpreter v701154185142 :=
  chain_cut false 2 (by decide)
private def v701154129846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 1)) (.var 1)))))))
private theorem no_v701154129846 : ¬ MinimalInterpreter v701154129846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 1)) (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 1)))) (so_dead (by decide) (.app (.app (.app (.var 2) (.var 3)) (.var 1)) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156495286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 3) (.var 1)))) (.var 1))))))
private theorem no_v701156495286 : ¬ MinimalInterpreter v701156495286 :=
  chain_cut false 5 (by decide)
theorem row93 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,3,1,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,3,1,1] = [v701154410102,v701154406326,v701154188918,v701154185142,v701154129846,v701156495286] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154410102) (.cons (no_v701154406326) (.cons (no_v701154188918) (.cons (no_v701154185142) (.cons (no_v701154129846) (.cons (no_v701156495286) .nil))))))

private def v701154410106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v701154410106 : ¬ MinimalInterpreter v701154410106 :=
  chain_cut false 2 (by decide)
private def v701154406330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v701154406330 : ¬ MinimalInterpreter v701154406330 :=
  chain_cut false 2 (by decide)
private def v701154188922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 2) (.var 0))))))))
private theorem no_v701154188922 : ¬ MinimalInterpreter v701154188922 :=
  chain_cut false 2 (by decide)
private def v701154185146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 0)))))))
private theorem no_v701154185146 : ¬ MinimalInterpreter v701154185146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.app (.var 2) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154129850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 0)))))))
private theorem no_v701154129850 : ¬ MinimalInterpreter v701154129850 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 1) (.var 2)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701157359226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v701157359226 : ¬ MinimalInterpreter v701157359226 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157355450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v701157355450 : ¬ MinimalInterpreter v701157355450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701156495290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))
private theorem no_v701156495290 : ¬ MinimalInterpreter v701156495290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row94 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,3,2,0]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,3,2,0] = [v701154410106,v701154406330,v701154188922,v701154185146,v701154129850,v701157359226,v701157355450,v701156495290] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154410106) (.cons (no_v701154406330) (.cons (no_v701154188922) (.cons (no_v701154185146) (.cons (no_v701154129850) (.cons (no_v701157359226) (.cons (no_v701157355450) (.cons (no_v701156495290) .nil))))))))

private def v701154433502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v701154433502 : ¬ MinimalInterpreter v701154433502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154432734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v701154432734 : ¬ MinimalInterpreter v701154432734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154191838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v701154191838 : ¬ MinimalInterpreter v701154191838 :=
  chain_cut false 3 (by decide)
private def v701154191070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v701154191070 : ¬ MinimalInterpreter v701154191070 :=
  chain_cut false 3 (by decide)
private def v701154130654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v701154130654 : ¬ MinimalInterpreter v701154130654 :=
  chain_cut false 3 (by decide)
theorem row95 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,0,1,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,0,1,3] = [v701154433502,v701154432734,v701154191838,v701154191070,v701154130654] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154433502) (.cons (no_v701154432734) (.cons (no_v701154191838) (.cons (no_v701154191070) (.cons (no_v701154130654) .nil)))))

end Blc.SelfintSingleObject.Rows39
