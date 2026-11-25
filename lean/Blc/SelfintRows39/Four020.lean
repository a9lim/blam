import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row120 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,1,1,0,1]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row121 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,1,1,1,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701154256794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v701154256794 : ¬ MinimalInterpreter v701154256794 :=
  cost_cut false 2 (by decide)
private def v701154256362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v701154256362 : ¬ MinimalInterpreter v701154256362 :=
  cost_cut false 2 (by decide)
private def v701154245530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154245530 : ¬ MinimalInterpreter v701154245530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154245098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v701154245098 : ¬ MinimalInterpreter v701154245098 :=
  cost_cut false 2 (by decide)
private def v701154242282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v701154242282 : ¬ MinimalInterpreter v701154242282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154158490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154158490 : ¬ MinimalInterpreter v701154158490 :=
  cost_cut false 2 (by decide)
private def v701154158058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v701154158058 : ¬ MinimalInterpreter v701154158058 :=
  cost_cut false 2 (by decide)
private def v701154147226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154147226 : ¬ MinimalInterpreter v701154147226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154122650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v701154122650 : ¬ MinimalInterpreter v701154122650 :=
  cost_cut false 2 (by decide)
private def v701154146794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)))))))
private theorem no_v701154146794 : ¬ MinimalInterpreter v701154146794 :=
  cost_cut false 2 (by decide)
private def v701154143978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))))))
private theorem no_v701154143978 : ¬ MinimalInterpreter v701154143978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154122218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v701154122218 : ¬ MinimalInterpreter v701154122218 :=
  cost_cut false 2 (by decide)
private def v701154119402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v701154119402 : ¬ MinimalInterpreter v701154119402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154113258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v701154113258 : ¬ MinimalInterpreter v701154113258 :=
  cost_cut false 2 (by decide)
private def v701156616090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v701156616090 : ¬ MinimalInterpreter v701156616090 :=
  cost_cut false 2 (by decide)
private def v701156615658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v701156615658 : ¬ MinimalInterpreter v701156615658 :=
  cost_cut false 2 (by decide)
private def v701156604826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701156604826 : ¬ MinimalInterpreter v701156604826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156604394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v701156604394 : ¬ MinimalInterpreter v701156604394 :=
  cost_cut false 2 (by decide)
private def v701156601578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v701156601578 : ¬ MinimalInterpreter v701156601578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156309482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0))))))
private theorem no_v701156309482 : ¬ MinimalInterpreter v701156309482 :=
  cost_cut false 2 (by decide)
private def v701156306666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))))))
private theorem no_v701156306666 : ¬ MinimalInterpreter v701156306666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))))
private def v701166053274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v701166053274 : ¬ MinimalInterpreter v701166053274 :=
  cost_cut false 2 (by decide)
private def v701166052842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v701166052842 : ¬ MinimalInterpreter v701166052842 :=
  cost_cut false 2 (by decide)
private def v701166042010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701166042010 : ¬ MinimalInterpreter v701166042010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701166041578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v701166041578 : ¬ MinimalInterpreter v701166041578 :=
  cost_cut false 2 (by decide)
private def v701166038762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v701166038762 : ¬ MinimalInterpreter v701166038762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701164960234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))))
private theorem no_v701164960234 : ¬ MinimalInterpreter v701164960234 :=
  cost_cut false 2 (by decide)
private def v701164957418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0)))))
private theorem no_v701164957418 : ¬ MinimalInterpreter v701164957418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0))))))
theorem row122 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,1,2,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,1,2,0,0] = [v701154256794,v701154256362,v701154245530,v701154245098,v701154242282,v701154158490,v701154158058,v701154147226,v701154122650,v701154146794,v701154143978,v701154122218,v701154119402,v701154113258,v701156616090,v701156615658,v701156604826,v701156604394,v701156601578,v701156309482,v701156306666,v701166053274,v701166052842,v701166042010,v701166041578,v701166038762,v701164960234,v701164957418] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154256794) (.cons (no_v701154256362) (.cons (no_v701154245530) (.cons (no_v701154245098) (.cons (no_v701154242282) (.cons (no_v701154158490) (.cons (no_v701154158058) (.cons (no_v701154147226) (.cons (no_v701154122650) (.cons (no_v701154146794) (.cons (no_v701154143978) (.cons (no_v701154122218) (.cons (no_v701154119402) (.cons (no_v701154113258) (.cons (no_v701156616090) (.cons (no_v701156615658) (.cons (no_v701156604826) (.cons (no_v701156604394) (.cons (no_v701156601578) (.cons (no_v701156309482) (.cons (no_v701156306666) (.cons (no_v701166053274) (.cons (no_v701166052842) (.cons (no_v701166042010) (.cons (no_v701166041578) (.cons (no_v701166038762) (.cons (no_v701164960234) (.cons (no_v701164957418) .nil))))))))))))))))))))))))))))

private def v701154259766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v701154259766 : ¬ MinimalInterpreter v701154259766 :=
  cost_cut false 2 (by decide)
private def v701154259670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v701154259670 : ¬ MinimalInterpreter v701154259670 :=
  cost_cut false 2 (by decide)
private def v701154245942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701154245942 : ¬ MinimalInterpreter v701154245942 :=
  cost_cut false 2 (by decide)
private def v701154245846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v701154245846 : ¬ MinimalInterpreter v701154245846 :=
  cost_cut false 2 (by decide)
private def v701154242390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v701154242390 : ¬ MinimalInterpreter v701154242390 :=
  cost_cut false 2 (by decide)
private def v701154161462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v701154161462 : ¬ MinimalInterpreter v701154161462 :=
  cost_cut false 2 (by decide)
private def v701154161366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v701154161366 : ¬ MinimalInterpreter v701154161366 :=
  cost_cut false 2 (by decide)
private def v701154147638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v701154147638 : ¬ MinimalInterpreter v701154147638 :=
  cost_cut false 2 (by decide)
private def v701154123062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v701154123062 : ¬ MinimalInterpreter v701154123062 :=
  cost_cut false 2 (by decide)
private def v701154147542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v701154147542 : ¬ MinimalInterpreter v701154147542 :=
  cost_cut false 2 (by decide)
private def v701154144086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1)))))))
private theorem no_v701154144086 : ¬ MinimalInterpreter v701154144086 :=
  cost_cut false 2 (by decide)
private def v701154122966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v701154122966 : ¬ MinimalInterpreter v701154122966 :=
  cost_cut false 2 (by decide)
private def v701154119510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v701154119510 : ¬ MinimalInterpreter v701154119510 :=
  cost_cut false 2 (by decide)
private def v701154113366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v701154113366 : ¬ MinimalInterpreter v701154113366 :=
  cost_cut false 2 (by decide)
private def v701156619062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v701156619062 : ¬ MinimalInterpreter v701156619062 :=
  cost_cut false 2 (by decide)
private def v701156618966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v701156618966 : ¬ MinimalInterpreter v701156618966 :=
  cost_cut false 2 (by decide)
private def v701156605238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701156605238 : ¬ MinimalInterpreter v701156605238 :=
  cost_cut false 2 (by decide)
private def v701156605142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v701156605142 : ¬ MinimalInterpreter v701156605142 :=
  cost_cut false 2 (by decide)
private def v701156601686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v701156601686 : ¬ MinimalInterpreter v701156601686 :=
  cost_cut false 2 (by decide)
private def v701166056246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v701166056246 : ¬ MinimalInterpreter v701166056246 :=
  cost_cut false 2 (by decide)
private def v701166056150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v701166056150 : ¬ MinimalInterpreter v701166056150 :=
  cost_cut false 2 (by decide)
private def v701166042422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701166042422 : ¬ MinimalInterpreter v701166042422 :=
  cost_cut false 2 (by decide)
private def v701166042326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v701166042326 : ¬ MinimalInterpreter v701166042326 :=
  cost_cut false 2 (by decide)
private def v701166038870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v701166038870 : ¬ MinimalInterpreter v701166038870 :=
  cost_cut false 2 (by decide)
theorem row123 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,2,0,0,1]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,2,0,0,1] = [v701154259766,v701154259670,v701154245942,v701154245846,v701154242390,v701154161462,v701154161366,v701154147638,v701154123062,v701154147542,v701154144086,v701154122966,v701154119510,v701154113366,v701156619062,v701156618966,v701156605238,v701156605142,v701156601686,v701166056246,v701166056150,v701166042422,v701166042326,v701166038870] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154259766) (.cons (no_v701154259670) (.cons (no_v701154245942) (.cons (no_v701154245846) (.cons (no_v701154242390) (.cons (no_v701154161462) (.cons (no_v701154161366) (.cons (no_v701154147638) (.cons (no_v701154123062) (.cons (no_v701154147542) (.cons (no_v701154144086) (.cons (no_v701154122966) (.cons (no_v701154119510) (.cons (no_v701154113366) (.cons (no_v701156619062) (.cons (no_v701156618966) (.cons (no_v701156605238) (.cons (no_v701156605142) (.cons (no_v701156601686) (.cons (no_v701166056246) (.cons (no_v701166056150) (.cons (no_v701166042422) (.cons (no_v701166042326) (.cons (no_v701166038870) .nil))))))))))))))))))))))))

private def v701154259770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v701154259770 : ¬ MinimalInterpreter v701154259770 :=
  cost_cut false 2 (by decide)
private def v701154259674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v701154259674 : ¬ MinimalInterpreter v701154259674 :=
  cost_cut false 2 (by decide)
private def v701154245946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701154245946 : ¬ MinimalInterpreter v701154245946 :=
  cost_cut false 2 (by decide)
private def v701154245850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v701154245850 : ¬ MinimalInterpreter v701154245850 :=
  cost_cut false 2 (by decide)
private def v701154242394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v701154242394 : ¬ MinimalInterpreter v701154242394 :=
  cost_cut false 2 (by decide)
private def v701154161466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v701154161466 : ¬ MinimalInterpreter v701154161466 :=
  cost_cut false 2 (by decide)
private def v701154161370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v701154161370 : ¬ MinimalInterpreter v701154161370 :=
  cost_cut false 2 (by decide)
private def v701154147642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v701154147642 : ¬ MinimalInterpreter v701154147642 :=
  cost_cut false 2 (by decide)
private def v701154123066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v701154123066 : ¬ MinimalInterpreter v701154123066 :=
  cost_cut false 2 (by decide)
private def v701154147546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v701154147546 : ¬ MinimalInterpreter v701154147546 :=
  cost_cut false 2 (by decide)
private def v701154144090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)))))))
private theorem no_v701154144090 : ¬ MinimalInterpreter v701154144090 :=
  cost_cut false 2 (by decide)
private def v701154122970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v701154122970 : ¬ MinimalInterpreter v701154122970 :=
  cost_cut false 2 (by decide)
private def v701154119514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v701154119514 : ¬ MinimalInterpreter v701154119514 :=
  cost_cut false 2 (by decide)
private def v701154113370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v701154113370 : ¬ MinimalInterpreter v701154113370 :=
  cost_cut false 2 (by decide)
private def v701156619066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v701156619066 : ¬ MinimalInterpreter v701156619066 :=
  cost_cut false 2 (by decide)
private def v701156618970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v701156618970 : ¬ MinimalInterpreter v701156618970 :=
  cost_cut false 2 (by decide)
private def v701156605242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701156605242 : ¬ MinimalInterpreter v701156605242 :=
  cost_cut false 2 (by decide)
private def v701156605146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v701156605146 : ¬ MinimalInterpreter v701156605146 :=
  cost_cut false 2 (by decide)
private def v701156601690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v701156601690 : ¬ MinimalInterpreter v701156601690 :=
  cost_cut false 2 (by decide)
private def v701156310234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0))))))
private theorem no_v701156310234 : ¬ MinimalInterpreter v701156310234 :=
  cost_cut false 2 (by decide)
private def v701156306778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0))))))
private theorem no_v701156306778 : ¬ MinimalInterpreter v701156306778 :=
  cost_cut false 2 (by decide)
private def v701166056250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v701166056250 : ¬ MinimalInterpreter v701166056250 :=
  cost_cut false 2 (by decide)
private def v701166056154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v701166056154 : ¬ MinimalInterpreter v701166056154 :=
  cost_cut false 2 (by decide)
private def v701166042426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701166042426 : ¬ MinimalInterpreter v701166042426 :=
  cost_cut false 2 (by decide)
private def v701166042330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v701166042330 : ¬ MinimalInterpreter v701166042330 :=
  cost_cut false 2 (by decide)
private def v701166038874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v701166038874 : ¬ MinimalInterpreter v701166038874 :=
  cost_cut false 2 (by decide)
private def v701164960986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0)))))
private theorem no_v701164960986 : ¬ MinimalInterpreter v701164960986 :=
  cost_cut false 2 (by decide)
private def v701164957530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.var 0)))))
private theorem no_v701164957530 : ¬ MinimalInterpreter v701164957530 :=
  cost_cut false 2 (by decide)
theorem row124 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,2,0,1,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,2,0,1,0] = [v701154259770,v701154259674,v701154245946,v701154245850,v701154242394,v701154161466,v701154161370,v701154147642,v701154123066,v701154147546,v701154144090,v701154122970,v701154119514,v701154113370,v701156619066,v701156618970,v701156605242,v701156605146,v701156601690,v701156310234,v701156306778,v701166056250,v701166056154,v701166042426,v701166042330,v701166038874,v701164960986,v701164957530] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154259770) (.cons (no_v701154259674) (.cons (no_v701154245946) (.cons (no_v701154245850) (.cons (no_v701154242394) (.cons (no_v701154161466) (.cons (no_v701154161370) (.cons (no_v701154147642) (.cons (no_v701154123066) (.cons (no_v701154147546) (.cons (no_v701154144090) (.cons (no_v701154122970) (.cons (no_v701154119514) (.cons (no_v701154113370) (.cons (no_v701156619066) (.cons (no_v701156618970) (.cons (no_v701156605242) (.cons (no_v701156605146) (.cons (no_v701156601690) (.cons (no_v701156310234) (.cons (no_v701156306778) (.cons (no_v701166056250) (.cons (no_v701166056154) (.cons (no_v701166042426) (.cons (no_v701166042330) (.cons (no_v701166038874) (.cons (no_v701164960986) (.cons (no_v701164957530) .nil))))))))))))))))))))))))))))

private def v701154259866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v701154259866 : ¬ MinimalInterpreter v701154259866 :=
  cost_cut false 2 (by decide)
private def v701154259690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v701154259690 : ¬ MinimalInterpreter v701154259690 :=
  cost_cut false 2 (by decide)
private def v701154246042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154246042 : ¬ MinimalInterpreter v701154246042 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154245866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v701154245866 : ¬ MinimalInterpreter v701154245866 :=
  cost_cut false 2 (by decide)
private def v701154242410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v701154242410 : ¬ MinimalInterpreter v701154242410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154161562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154161562 : ¬ MinimalInterpreter v701154161562 :=
  cost_cut false 2 (by decide)
private def v701154161386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v701154161386 : ¬ MinimalInterpreter v701154161386 :=
  cost_cut false 2 (by decide)
private def v701154147738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154147738 : ¬ MinimalInterpreter v701154147738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154123162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v701154123162 : ¬ MinimalInterpreter v701154123162 :=
  cost_cut false 2 (by decide)
private def v701154147562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v701154147562 : ¬ MinimalInterpreter v701154147562 :=
  cost_cut false 2 (by decide)
private def v701154144106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))))))
private theorem no_v701154144106 : ¬ MinimalInterpreter v701154144106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154122986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v701154122986 : ¬ MinimalInterpreter v701154122986 :=
  cost_cut false 2 (by decide)
private def v701154119530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v701154119530 : ¬ MinimalInterpreter v701154119530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154113386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v701154113386 : ¬ MinimalInterpreter v701154113386 :=
  cost_cut false 2 (by decide)
private def v701156619162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v701156619162 : ¬ MinimalInterpreter v701156619162 :=
  cost_cut false 2 (by decide)
private def v701156618986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v701156618986 : ¬ MinimalInterpreter v701156618986 :=
  cost_cut false 2 (by decide)
private def v701156605338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701156605338 : ¬ MinimalInterpreter v701156605338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156605162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v701156605162 : ¬ MinimalInterpreter v701156605162 :=
  cost_cut false 2 (by decide)
private def v701156601706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v701156601706 : ¬ MinimalInterpreter v701156601706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156310250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0))))))
private theorem no_v701156310250 : ¬ MinimalInterpreter v701156310250 :=
  cost_cut false 2 (by decide)
private def v701156306794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))))))
private theorem no_v701156306794 : ¬ MinimalInterpreter v701156306794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))))
private def v701166056346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v701166056346 : ¬ MinimalInterpreter v701166056346 :=
  cost_cut false 2 (by decide)
private def v701166056170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v701166056170 : ¬ MinimalInterpreter v701166056170 :=
  cost_cut false 2 (by decide)
private def v701166042522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701166042522 : ¬ MinimalInterpreter v701166042522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701166042346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v701166042346 : ¬ MinimalInterpreter v701166042346 :=
  cost_cut false 2 (by decide)
private def v701166038890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v701166038890 : ¬ MinimalInterpreter v701166038890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701164961002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)))))
private theorem no_v701164961002 : ¬ MinimalInterpreter v701164961002 :=
  cost_cut false 2 (by decide)
private def v701164957546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0)))))
private theorem no_v701164957546 : ¬ MinimalInterpreter v701164957546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0))))))
theorem row125 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,2,1,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,2,1,0,0] = [v701154259866,v701154259690,v701154246042,v701154245866,v701154242410,v701154161562,v701154161386,v701154147738,v701154123162,v701154147562,v701154144106,v701154122986,v701154119530,v701154113386,v701156619162,v701156618986,v701156605338,v701156605162,v701156601706,v701156310250,v701156306794,v701166056346,v701166056170,v701166042522,v701166042346,v701166038890,v701164961002,v701164957546] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154259866) (.cons (no_v701154259690) (.cons (no_v701154246042) (.cons (no_v701154245866) (.cons (no_v701154242410) (.cons (no_v701154161562) (.cons (no_v701154161386) (.cons (no_v701154147738) (.cons (no_v701154123162) (.cons (no_v701154147562) (.cons (no_v701154144106) (.cons (no_v701154122986) (.cons (no_v701154119530) (.cons (no_v701154113386) (.cons (no_v701156619162) (.cons (no_v701156618986) (.cons (no_v701156605338) (.cons (no_v701156605162) (.cons (no_v701156601706) (.cons (no_v701156310250) (.cons (no_v701156306794) (.cons (no_v701166056346) (.cons (no_v701166056170) (.cons (no_v701166042522) (.cons (no_v701166042346) (.cons (no_v701166038890) (.cons (no_v701164961002) (.cons (no_v701164957546) .nil))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
