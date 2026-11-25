import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700952334138 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v700952334138 : ¬ MinimalInterpreter v700952334138 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952333274 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v700952333274 : ¬ MinimalInterpreter v700952333274 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952278842 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v700952278842 : ¬ MinimalInterpreter v700952278842 :=
  w_cut false 0 (by decide)
private def v700952277978 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v700952277978 : ¬ MinimalInterpreter v700952277978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700952264154 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v700952264154 : ¬ MinimalInterpreter v700952264154 :=
  w_cut false 0 (by decide)
private def v699341721402 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v699341721402 : ¬ MinimalInterpreter v699341721402 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341720538 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v699341720538 : ¬ MinimalInterpreter v699341720538 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341666106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v699341666106 : ¬ MinimalInterpreter v699341666106 :=
  w_cut false 0 (by decide)
private def v699341665242 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v699341665242 : ¬ MinimalInterpreter v699341665242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699341651418 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v699341651418 : ¬ MinimalInterpreter v699341651418 :=
  w_cut false 0 (by decide)
theorem row66 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,2,1,0]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,2,1,0] = [v700952334138,v700952333274,v700952278842,v700952277978,v700952264154,v699341721402,v699341720538,v699341666106,v699341665242,v699341651418] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952334138) (.cons (no_v700952333274) (.cons (no_v700952278842) (.cons (no_v700952277978) (.cons (no_v700952264154) (.cons (no_v699341721402) (.cons (no_v699341720538) (.cons (no_v699341666106) (.cons (no_v699341665242) (.cons (no_v699341651418) .nil))))))))))

private def v701154256862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 3)))))))))
private theorem no_v701154256862 : ¬ MinimalInterpreter v701154256862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 3)))) (.app (.var 0) (.app (.var 2) (.var 2))) (by decide) (by decide)) (.app (.var 1) (.var 1)) (by decide) (by decide))))))
private def v701154245598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 3))))))))
private theorem no_v701154245598 : ¬ MinimalInterpreter v701154245598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 3))) (.app (.app (.var 0) (.var 2)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154158558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 3))))))))
private theorem no_v701154158558 : ¬ MinimalInterpreter v701154158558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154147294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 3)))))))
private theorem no_v701154147294 : ¬ MinimalInterpreter v701154147294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154122718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 3)))))))
private theorem no_v701154122718 : ¬ MinimalInterpreter v701154122718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156788190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 3)))))))))
private theorem no_v701156788190 : ¬ MinimalInterpreter v701156788190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.app (.var 1) (.var 1))) (by decide) (by decide)))))
private def v701156394974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 3))))))))
private theorem no_v701156394974 : ¬ MinimalInterpreter v701156394974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row67 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [0,1,3,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [0,1,3,3] = [v701154256862,v701154245598,v701154158558,v701154147294,v701154122718,v701156788190,v701156394974] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154256862) (.cons (no_v701154245598) (.cons (no_v701154158558) (.cons (no_v701154147294) (.cons (no_v701154122718) (.cons (no_v701156788190) (.cons (no_v701156394974) .nil)))))))

private def v701154259934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 3)))))))))
private theorem no_v701154259934 : ¬ MinimalInterpreter v701154259934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 3)))) (.app (.var 1) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154246110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 3))))))))
private theorem no_v701154246110 : ¬ MinimalInterpreter v701154246110 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154161630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 3))))))))
private theorem no_v701154161630 : ¬ MinimalInterpreter v701154161630 :=
  chain_cut false 2 (by decide)
private def v701154147806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 3)))))))
private theorem no_v701154147806 : ¬ MinimalInterpreter v701154147806 :=
  chain_cut false 2 (by decide)
private def v701154123230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 3)))))))
private theorem no_v701154123230 : ¬ MinimalInterpreter v701154123230 :=
  chain_cut false 2 (by decide)
private def v701156619230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 2) (.var 3)))))))))
private theorem no_v701156619230 : ¬ MinimalInterpreter v701156619230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 1) (.app (.var 1) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.app (.var 2) (.var 3))))) (so_dead (by decide) (.app (.var 1) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156605406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 2)) (.var 3))))))))
private theorem no_v701156605406 : ¬ MinimalInterpreter v701156605406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 2)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 2)) (.var 3)))))) (.lam (r := (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 2) (.var 2)) (.var 3)))) (so_dead (by decide) (.app (.app (.var 1) (.var 1)) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156803550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v701156803550 : ¬ MinimalInterpreter v701156803550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 3))))) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156410334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v701156410334 : ¬ MinimalInterpreter v701156410334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row68 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [0,2,2,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [0,2,2,3] = [v701154259934,v701154246110,v701154161630,v701154147806,v701154123230,v701156619230,v701156605406,v701156803550,v701156410334] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154259934) (.cons (no_v701154246110) (.cons (no_v701154161630) (.cons (no_v701154147806) (.cons (no_v701154123230) (.cons (no_v701156619230) (.cons (no_v701156605406) (.cons (no_v701156803550) (.cons (no_v701156410334) .nil)))))))))

private def v701154259950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 2)))))))))
private theorem no_v701154259950 : ¬ MinimalInterpreter v701154259950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 2)))) (.app (.var 1) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154246126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 2))))))))
private theorem no_v701154246126 : ¬ MinimalInterpreter v701154246126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 1) (.var 2)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 2))) (.app (.app (.var 1) (.var 2)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154161646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 2))))))))
private theorem no_v701154161646 : ¬ MinimalInterpreter v701154161646 :=
  chain_cut false 2 (by decide)
private def v701154147822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 2)))))))
private theorem no_v701154147822 : ¬ MinimalInterpreter v701154147822 :=
  chain_cut false 2 (by decide)
private def v701154123246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 2)))))))
private theorem no_v701154123246 : ¬ MinimalInterpreter v701154123246 :=
  chain_cut false 2 (by decide)
private def v701156619246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 2)))))))))
private theorem no_v701156619246 : ¬ MinimalInterpreter v701156619246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 2))))))) (.lam (r := (.lam (.app (.var 1) (.app (.var 2) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.app (.var 3) (.var 2))))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156605422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 2))))))))
private theorem no_v701156605422 : ¬ MinimalInterpreter v701156605422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 2)))))) (.lam (r := (.lam (.app (.app (.var 1) (.var 2)) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 2)))) (so_dead (by decide) (.app (.app (.var 1) (.var 2)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156803566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v701156803566 : ¬ MinimalInterpreter v701156803566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.app (.var 3) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156410350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v701156410350 : ¬ MinimalInterpreter v701156410350 :=
  chain_cut true 3 (by decide)
private def v701156310510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 2))))))
private theorem no_v701156310510 : ¬ MinimalInterpreter v701156310510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row69 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [0,2,3,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [0,2,3,2] = [v701154259950,v701154246126,v701154161646,v701154147822,v701154123246,v701156619246,v701156605422,v701156803566,v701156410350,v701156310510] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154259950) (.cons (no_v701154246126) (.cons (no_v701154161646) (.cons (no_v701154147822) (.cons (no_v701154123246) (.cons (no_v701156619246) (.cons (no_v701156605422) (.cons (no_v701156803566) (.cons (no_v701156410350) (.cons (no_v701156310510) .nil))))))))))

private def v701154261470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 3)))))))))
private theorem no_v701154261470 : ¬ MinimalInterpreter v701154261470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 3)))) (.app (.var 2) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154246366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 3))))))))
private theorem no_v701154246366 : ¬ MinimalInterpreter v701154246366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 3))) (.app (.app (.var 2) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154163166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 3))))))))
private theorem no_v701154163166 : ¬ MinimalInterpreter v701154163166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154148062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 3)))))))
private theorem no_v701154148062 : ¬ MinimalInterpreter v701154148062 :=
  chain_cut true 3 (by decide)
private def v701154123486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 3)))))))
private theorem no_v701154123486 : ¬ MinimalInterpreter v701154123486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row70 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [0,3,1,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [0,3,1,3] = [v701154261470,v701154246366,v701154163166,v701154148062,v701154123486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154261470) (.cons (no_v701154246366) (.cons (no_v701154163166) (.cons (no_v701154148062) (.cons (no_v701154123486) .nil)))))

private def v701154261486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 2)))))))))
private theorem no_v701154261486 : ¬ MinimalInterpreter v701154261486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 2)))) (.app (.var 2) (.app (.var 1) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154246382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 2))))))))
private theorem no_v701154246382 : ¬ MinimalInterpreter v701154246382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 2) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 2))) (.app (.app (.var 2) (.var 1)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154163182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 2))))))))
private theorem no_v701154163182 : ¬ MinimalInterpreter v701154163182 :=
  chain_cut false 2 (by decide)
private def v701154148078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 2)))))))
private theorem no_v701154148078 : ¬ MinimalInterpreter v701154148078 :=
  chain_cut false 2 (by decide)
private def v701154123502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 2)))))))
private theorem no_v701154123502 : ¬ MinimalInterpreter v701154123502 :=
  chain_cut false 2 (by decide)
private def v701156620782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 2)))))))))
private theorem no_v701156620782 : ¬ MinimalInterpreter v701156620782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 2))))))) (.lam (r := (.lam (.app (.var 2) (.app (.var 1) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.app (.var 2) (.var 2))))) (so_dead (by decide) (.app (.var 2) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156605678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 2))))))))
private theorem no_v701156605678 : ¬ MinimalInterpreter v701156605678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 2)))))) (.lam (r := (.lam (.app (.app (.var 2) (.var 1)) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 2)))) (so_dead (by decide) (.app (.app (.var 2) (.var 1)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156310766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 2))))))
private theorem no_v701156310766 : ¬ MinimalInterpreter v701156310766 :=
  chain_cut true 3 (by decide)
theorem row71 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [0,3,2,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [0,3,2,2] = [v701154261486,v701154246382,v701154163182,v701154148078,v701154123502,v701156620782,v701156605678,v701156310766] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154261486) (.cons (no_v701154246382) (.cons (no_v701154163182) (.cons (no_v701154148078) (.cons (no_v701154123502) (.cons (no_v701156620782) (.cons (no_v701156605678) (.cons (no_v701156310766) .nil))))))))

end Blc.SelfintSingleObject.Rows39
