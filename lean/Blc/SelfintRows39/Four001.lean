import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701156793966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v701156793966 : ¬ MinimalInterpreter v701156793966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156792238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v701156792238 : ¬ MinimalInterpreter v701156792238 :=
  chain_cut true 4 (by decide)
private def v701156748910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v701156748910 : ¬ MinimalInterpreter v701156748910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156747182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v701156747182 : ¬ MinimalInterpreter v701156747182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156735918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v701156735918 : ¬ MinimalInterpreter v701156735918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156400750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v701156400750 : ¬ MinimalInterpreter v701156400750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156399022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v701156399022 : ¬ MinimalInterpreter v701156399022 :=
  chain_cut true 4 (by decide)
private def v701156355694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156355694 : ¬ MinimalInterpreter v701156355694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156257390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156257390 : ¬ MinimalInterpreter v701156257390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156353966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 2))))))
private theorem no_v701156353966 : ¬ MinimalInterpreter v701156353966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156342702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 2))))))
private theorem no_v701156342702 : ¬ MinimalInterpreter v701156342702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156255662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v701156255662 : ¬ MinimalInterpreter v701156255662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156244398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v701156244398 : ¬ MinimalInterpreter v701156244398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156219822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v701156219822 : ¬ MinimalInterpreter v701156219822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166231150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v701166231150 : ¬ MinimalInterpreter v701166231150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166229422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v701166229422 : ¬ MinimalInterpreter v701166229422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166186094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v701166186094 : ¬ MinimalInterpreter v701166186094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166184366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v701166184366 : ¬ MinimalInterpreter v701166184366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166173102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v701166173102 : ¬ MinimalInterpreter v701166173102 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203979886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v701203979886 : ¬ MinimalInterpreter v701203979886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203978158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v701203978158 : ¬ MinimalInterpreter v701203978158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203934830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v701203934830 : ¬ MinimalInterpreter v701203934830 :=
  w_cut false 0 (by decide)
private def v701203933102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v701203933102 : ¬ MinimalInterpreter v701203933102 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203921838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v701203921838 : ¬ MinimalInterpreter v701203921838 :=
  w_cut false 0 (by decide)
theorem row6 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,2,0,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,2,0,2] = [v701156793966,v701156792238,v701156748910,v701156747182,v701156735918,v701156400750,v701156399022,v701156355694,v701156257390,v701156353966,v701156342702,v701156255662,v701156244398,v701156219822,v701166231150,v701166229422,v701166186094,v701166184366,v701166173102,v701203979886,v701203978158,v701203934830,v701203933102,v701203921838] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156793966) (.cons (no_v701156792238) (.cons (no_v701156748910) (.cons (no_v701156747182) (.cons (no_v701156735918) (.cons (no_v701156400750) (.cons (no_v701156399022) (.cons (no_v701156355694) (.cons (no_v701156257390) (.cons (no_v701156353966) (.cons (no_v701156342702) (.cons (no_v701156255662) (.cons (no_v701156244398) (.cons (no_v701156219822) (.cons (no_v701166231150) (.cons (no_v701166229422) (.cons (no_v701166186094) (.cons (no_v701166184366) (.cons (no_v701166173102) (.cons (no_v701203979886) (.cons (no_v701203978158) (.cons (no_v701203934830) (.cons (no_v701203933102) (.cons (no_v701203921838) .nil))))))))))))))))))))))))

private def v701156793974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v701156793974 : ¬ MinimalInterpreter v701156793974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1))))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156792246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v701156792246 : ¬ MinimalInterpreter v701156792246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1)))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156748918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v701156748918 : ¬ MinimalInterpreter v701156748918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156747190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v701156747190 : ¬ MinimalInterpreter v701156747190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156735926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v701156735926 : ¬ MinimalInterpreter v701156735926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156400758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v701156400758 : ¬ MinimalInterpreter v701156400758 :=
  chain_cut false 2 (by decide)
private def v701156399030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v701156399030 : ¬ MinimalInterpreter v701156399030 :=
  chain_cut false 2 (by decide)
private def v701156355702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 1)))))))
private theorem no_v701156355702 : ¬ MinimalInterpreter v701156355702 :=
  chain_cut false 2 (by decide)
private def v701156257398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v701156257398 : ¬ MinimalInterpreter v701156257398 :=
  chain_cut false 2 (by decide)
private def v701156353974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 1))))))
private theorem no_v701156353974 : ¬ MinimalInterpreter v701156353974 :=
  chain_cut false 2 (by decide)
private def v701156342710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 1))))))
private theorem no_v701156342710 : ¬ MinimalInterpreter v701156342710 :=
  chain_cut false 2 (by decide)
private def v701156255670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v701156255670 : ¬ MinimalInterpreter v701156255670 :=
  chain_cut false 2 (by decide)
private def v701156244406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)) (.var 1))))))
private theorem no_v701156244406 : ¬ MinimalInterpreter v701156244406 :=
  chain_cut false 2 (by decide)
private def v701156219830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v701156219830 : ¬ MinimalInterpreter v701156219830 :=
  chain_cut false 2 (by decide)
theorem row7 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,2,1,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,2,1,1] = [v701156793974,v701156792246,v701156748918,v701156747190,v701156735926,v701156400758,v701156399030,v701156355702,v701156257398,v701156353974,v701156342710,v701156255670,v701156244406,v701156219830] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156793974) (.cons (no_v701156792246) (.cons (no_v701156748918) (.cons (no_v701156747190) (.cons (no_v701156735926) (.cons (no_v701156400758) (.cons (no_v701156399030) (.cons (no_v701156355702) (.cons (no_v701156257398) (.cons (no_v701156353974) (.cons (no_v701156342710) (.cons (no_v701156255670) (.cons (no_v701156244406) (.cons (no_v701156219830) .nil))))))))))))))

private def v701156793978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v701156793978 : ¬ MinimalInterpreter v701156793978 :=
  chain_cut true 5 (by decide)
private def v701156792250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v701156792250 : ¬ MinimalInterpreter v701156792250 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156748922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v701156748922 : ¬ MinimalInterpreter v701156748922 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156747194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v701156747194 : ¬ MinimalInterpreter v701156747194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156735930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v701156735930 : ¬ MinimalInterpreter v701156735930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156400762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v701156400762 : ¬ MinimalInterpreter v701156400762 :=
  chain_cut true 5 (by decide)
private def v701156399034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v701156399034 : ¬ MinimalInterpreter v701156399034 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156355706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156355706 : ¬ MinimalInterpreter v701156355706 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156257402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156257402 : ¬ MinimalInterpreter v701156257402 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156353978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.var 0))))))
private theorem no_v701156353978 : ¬ MinimalInterpreter v701156353978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156342714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0))))))
private theorem no_v701156342714 : ¬ MinimalInterpreter v701156342714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156255674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v701156255674 : ¬ MinimalInterpreter v701156255674 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156244410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v701156244410 : ¬ MinimalInterpreter v701156244410 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156219834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v701156219834 : ¬ MinimalInterpreter v701156219834 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166231162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v701166231162 : ¬ MinimalInterpreter v701166231162 :=
  chain_cut true 7 (by decide)
private def v701166229434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v701166229434 : ¬ MinimalInterpreter v701166229434 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166186106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v701166186106 : ¬ MinimalInterpreter v701166186106 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166184378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v701166184378 : ¬ MinimalInterpreter v701166184378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide))) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701166173114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v701166173114 : ¬ MinimalInterpreter v701166173114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701203979898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v701203979898 : ¬ MinimalInterpreter v701203979898 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203978170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v701203978170 : ¬ MinimalInterpreter v701203978170 :=
  w_cut false 0 (by decide)
private def v701203934842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v701203934842 : ¬ MinimalInterpreter v701203934842 :=
  w_cut false 0 (by decide)
private def v701203933114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v701203933114 : ¬ MinimalInterpreter v701203933114 :=
  w_cut false 0 (by decide)
private def v701203921850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v701203921850 : ¬ MinimalInterpreter v701203921850 :=
  w_cut false 0 (by decide)
theorem row8 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,2,2,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,2,2,0] = [v701156793978,v701156792250,v701156748922,v701156747194,v701156735930,v701156400762,v701156399034,v701156355706,v701156257402,v701156353978,v701156342714,v701156255674,v701156244410,v701156219834,v701166231162,v701166229434,v701166186106,v701166184378,v701166173114,v701203979898,v701203978170,v701203934842,v701203933114,v701203921850] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156793978) (.cons (no_v701156792250) (.cons (no_v701156748922) (.cons (no_v701156747194) (.cons (no_v701156735930) (.cons (no_v701156400762) (.cons (no_v701156399034) (.cons (no_v701156355706) (.cons (no_v701156257402) (.cons (no_v701156353978) (.cons (no_v701156342714) (.cons (no_v701156255674) (.cons (no_v701156244410) (.cons (no_v701156219834) (.cons (no_v701166231162) (.cons (no_v701166229434) (.cons (no_v701166186106) (.cons (no_v701166184378) (.cons (no_v701166173114) (.cons (no_v701203979898) (.cons (no_v701203978170) (.cons (no_v701203934842) (.cons (no_v701203933114) (.cons (no_v701203921850) .nil))))))))))))))))))))))))

private def v701156805870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701156805870 : ¬ MinimalInterpreter v701156805870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156805486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701156805486 : ¬ MinimalInterpreter v701156805486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156750574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v701156750574 : ¬ MinimalInterpreter v701156750574 :=
  chain_cut true 4 (by decide)
private def v701156750190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v701156750190 : ¬ MinimalInterpreter v701156750190 :=
  chain_cut true 4 (by decide)
private def v701156736366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v701156736366 : ¬ MinimalInterpreter v701156736366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156412654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701156412654 : ¬ MinimalInterpreter v701156412654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156412270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701156412270 : ¬ MinimalInterpreter v701156412270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156357358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156357358 : ¬ MinimalInterpreter v701156357358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156259054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v701156259054 : ¬ MinimalInterpreter v701156259054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156356974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v701156356974 : ¬ MinimalInterpreter v701156356974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156343150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v701156343150 : ¬ MinimalInterpreter v701156343150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156258670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v701156258670 : ¬ MinimalInterpreter v701156258670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156244846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v701156244846 : ¬ MinimalInterpreter v701156244846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156220270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v701156220270 : ¬ MinimalInterpreter v701156220270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701166243054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701166243054 : ¬ MinimalInterpreter v701166243054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166242670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701166242670 : ¬ MinimalInterpreter v701166242670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v701166187758 : ¬ MinimalInterpreter v701166187758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v701166187374 : ¬ MinimalInterpreter v701166187374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166173550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v701166173550 : ¬ MinimalInterpreter v701166173550 :=
  chain_cut true 4 (by decide)
private def v701203991790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701203991790 : ¬ MinimalInterpreter v701203991790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203991406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701203991406 : ¬ MinimalInterpreter v701203991406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203936494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v701203936494 : ¬ MinimalInterpreter v701203936494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203936110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v701203936110 : ¬ MinimalInterpreter v701203936110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203922286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v701203922286 : ¬ MinimalInterpreter v701203922286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row9 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,0,1,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,0,1,2] = [v701156805870,v701156805486,v701156750574,v701156750190,v701156736366,v701156412654,v701156412270,v701156357358,v701156259054,v701156356974,v701156343150,v701156258670,v701156244846,v701156220270,v701166243054,v701166242670,v701166187758,v701166187374,v701166173550,v701203991790,v701203991406,v701203936494,v701203936110,v701203922286] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156805870) (.cons (no_v701156805486) (.cons (no_v701156750574) (.cons (no_v701156750190) (.cons (no_v701156736366) (.cons (no_v701156412654) (.cons (no_v701156412270) (.cons (no_v701156357358) (.cons (no_v701156259054) (.cons (no_v701156356974) (.cons (no_v701156343150) (.cons (no_v701156258670) (.cons (no_v701156244846) (.cons (no_v701156220270) (.cons (no_v701166243054) (.cons (no_v701166242670) (.cons (no_v701166187758) (.cons (no_v701166187374) (.cons (no_v701166173550) (.cons (no_v701203991790) (.cons (no_v701203991406) (.cons (no_v701203936494) (.cons (no_v701203936110) (.cons (no_v701203922286) .nil))))))))))))))))))))))))

private def v701156805878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701156805878 : ¬ MinimalInterpreter v701156805878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156805494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701156805494 : ¬ MinimalInterpreter v701156805494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156750582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v701156750582 : ¬ MinimalInterpreter v701156750582 :=
  chain_cut true 4 (by decide)
private def v701156750198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v701156750198 : ¬ MinimalInterpreter v701156750198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156736374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v701156736374 : ¬ MinimalInterpreter v701156736374 :=
  chain_cut true 4 (by decide)
private def v701156412662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701156412662 : ¬ MinimalInterpreter v701156412662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156412278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701156412278 : ¬ MinimalInterpreter v701156412278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156357366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156357366 : ¬ MinimalInterpreter v701156357366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156259062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v701156259062 : ¬ MinimalInterpreter v701156259062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156356982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v701156356982 : ¬ MinimalInterpreter v701156356982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156343158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v701156343158 : ¬ MinimalInterpreter v701156343158 :=
  chain_cut true 4 (by decide)
private def v701156258678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v701156258678 : ¬ MinimalInterpreter v701156258678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156244854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v701156244854 : ¬ MinimalInterpreter v701156244854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156220278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v701156220278 : ¬ MinimalInterpreter v701156220278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701166243062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701166243062 : ¬ MinimalInterpreter v701166243062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166242678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701166242678 : ¬ MinimalInterpreter v701166242678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v701166187766 : ¬ MinimalInterpreter v701166187766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v701166187382 : ¬ MinimalInterpreter v701166187382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166173558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v701166173558 : ¬ MinimalInterpreter v701166173558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203991798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701203991798 : ¬ MinimalInterpreter v701203991798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203991414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701203991414 : ¬ MinimalInterpreter v701203991414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203936502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v701203936502 : ¬ MinimalInterpreter v701203936502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203936118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v701203936118 : ¬ MinimalInterpreter v701203936118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203922294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v701203922294 : ¬ MinimalInterpreter v701203922294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row10 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,0,2,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,0,2,1] = [v701156805878,v701156805494,v701156750582,v701156750198,v701156736374,v701156412662,v701156412278,v701156357366,v701156259062,v701156356982,v701156343158,v701156258678,v701156244854,v701156220278,v701166243062,v701166242678,v701166187766,v701166187382,v701166173558,v701203991798,v701203991414,v701203936502,v701203936118,v701203922294] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156805878) (.cons (no_v701156805494) (.cons (no_v701156750582) (.cons (no_v701156750198) (.cons (no_v701156736374) (.cons (no_v701156412662) (.cons (no_v701156412278) (.cons (no_v701156357366) (.cons (no_v701156259062) (.cons (no_v701156356982) (.cons (no_v701156343158) (.cons (no_v701156258678) (.cons (no_v701156244854) (.cons (no_v701156220278) (.cons (no_v701166243062) (.cons (no_v701166242678) (.cons (no_v701166187766) (.cons (no_v701166187382) (.cons (no_v701166173558) (.cons (no_v701203991798) (.cons (no_v701203991414) (.cons (no_v701203936502) (.cons (no_v701203936118) (.cons (no_v701203922294) .nil))))))))))))))))))))))))

private def v701156806254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701156806254 : ¬ MinimalInterpreter v701156806254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156805550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701156805550 : ¬ MinimalInterpreter v701156805550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156750958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v701156750958 : ¬ MinimalInterpreter v701156750958 :=
  chain_cut true 4 (by decide)
private def v701156750254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v701156750254 : ¬ MinimalInterpreter v701156750254 :=
  chain_cut true 4 (by decide)
private def v701156736430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v701156736430 : ¬ MinimalInterpreter v701156736430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156413038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701156413038 : ¬ MinimalInterpreter v701156413038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156412334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701156412334 : ¬ MinimalInterpreter v701156412334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156357742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156357742 : ¬ MinimalInterpreter v701156357742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156259438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156259438 : ¬ MinimalInterpreter v701156259438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156357038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v701156357038 : ¬ MinimalInterpreter v701156357038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156343214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v701156343214 : ¬ MinimalInterpreter v701156343214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156258734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v701156258734 : ¬ MinimalInterpreter v701156258734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156244910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v701156244910 : ¬ MinimalInterpreter v701156244910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156220334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v701156220334 : ¬ MinimalInterpreter v701156220334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701166243438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701166243438 : ¬ MinimalInterpreter v701166243438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166242734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701166242734 : ¬ MinimalInterpreter v701166242734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166188142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v701166188142 : ¬ MinimalInterpreter v701166188142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v701166187438 : ¬ MinimalInterpreter v701166187438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166173614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v701166173614 : ¬ MinimalInterpreter v701166173614 :=
  chain_cut true 4 (by decide)
private def v701203992174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701203992174 : ¬ MinimalInterpreter v701203992174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203991470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701203991470 : ¬ MinimalInterpreter v701203991470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203936878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v701203936878 : ¬ MinimalInterpreter v701203936878 :=
  w_cut false 0 (by decide)
private def v701203936174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v701203936174 : ¬ MinimalInterpreter v701203936174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203922350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v701203922350 : ¬ MinimalInterpreter v701203922350 :=
  w_cut false 0 (by decide)
theorem row11 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,1,0,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,1,0,2] = [v701156806254,v701156805550,v701156750958,v701156750254,v701156736430,v701156413038,v701156412334,v701156357742,v701156259438,v701156357038,v701156343214,v701156258734,v701156244910,v701156220334,v701166243438,v701166242734,v701166188142,v701166187438,v701166173614,v701203992174,v701203991470,v701203936878,v701203936174,v701203922350] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156806254) (.cons (no_v701156805550) (.cons (no_v701156750958) (.cons (no_v701156750254) (.cons (no_v701156736430) (.cons (no_v701156413038) (.cons (no_v701156412334) (.cons (no_v701156357742) (.cons (no_v701156259438) (.cons (no_v701156357038) (.cons (no_v701156343214) (.cons (no_v701156258734) (.cons (no_v701156244910) (.cons (no_v701156220334) (.cons (no_v701166243438) (.cons (no_v701166242734) (.cons (no_v701166188142) (.cons (no_v701166187438) (.cons (no_v701166173614) (.cons (no_v701203992174) (.cons (no_v701203991470) (.cons (no_v701203936878) (.cons (no_v701203936174) (.cons (no_v701203922350) .nil))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
