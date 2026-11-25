import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153622510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))))
private theorem no_v701153622510 : ¬ MinimalInterpreter v701153622510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))))
private def v701153619694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))))
private theorem no_v701153619694 : ¬ MinimalInterpreter v701153619694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701153597934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2)))))))))
private theorem no_v701153597934 : ¬ MinimalInterpreter v701153597934 :=
  cost_cut false 2 (by decide)
private def v701153595118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2))))))))
private theorem no_v701153595118 : ¬ MinimalInterpreter v701153595118 :=
  cost_cut false 2 (by decide)
private def v701153588974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2))))))))
private theorem no_v701153588974 : ¬ MinimalInterpreter v701153588974 :=
  cost_cut false 2 (by decide)
private def v701154256782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v701154256782 : ¬ MinimalInterpreter v701154256782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154245518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v701154245518 : ¬ MinimalInterpreter v701154245518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154244846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))))))
private theorem no_v701154244846 : ¬ MinimalInterpreter v701154244846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154158478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v701154158478 : ¬ MinimalInterpreter v701154158478 :=
  cost_cut false 2 (by decide)
private def v701154147214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 2))))))))
private theorem no_v701154147214 : ¬ MinimalInterpreter v701154147214 :=
  cost_cut false 2 (by decide)
private def v701154122638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v701154122638 : ¬ MinimalInterpreter v701154122638 :=
  cost_cut false 2 (by decide)
private def v701154135790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.var 2)))))))
private theorem no_v701154135790 : ¬ MinimalInterpreter v701154135790 :=
  cost_cut false 2 (by decide)
private def v701154146542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v701154146542 : ¬ MinimalInterpreter v701154146542 :=
  cost_cut false 2 (by decide)
private def v701154121966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v701154121966 : ¬ MinimalInterpreter v701154121966 :=
  cost_cut false 2 (by decide)
private def v701156793870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2))))))))))
private theorem no_v701156793870 : ¬ MinimalInterpreter v701156793870 :=
  chain_cut false 2 (by decide)
private def v701156748814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))))))))
private theorem no_v701156748814 : ¬ MinimalInterpreter v701156748814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 2)))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156745454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)))))))
private theorem no_v701156745454 : ¬ MinimalInterpreter v701156745454 :=
  chain_cut false 2 (by decide)
private def v701156400654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 2)))))))))
private theorem no_v701156400654 : ¬ MinimalInterpreter v701156400654 :=
  chain_cut false 2 (by decide)
private def v701156321166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v701156321166 : ¬ MinimalInterpreter v701156321166 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156355598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2))))))))
private theorem no_v701156355598 : ¬ MinimalInterpreter v701156355598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156257294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 2))))))))
private theorem no_v701156257294 : ¬ MinimalInterpreter v701156257294 :=
  chain_cut false 2 (by decide)
private def v701156236174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.lam (.var 2)))))))
private theorem no_v701156236174 : ¬ MinimalInterpreter v701156236174 :=
  chain_cut false 2 (by decide)
private def v701156352238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 2))))) (.var 2))))))
private theorem no_v701156352238 : ¬ MinimalInterpreter v701156352238 :=
  chain_cut false 2 (by decide)
private def v701156253934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))) (.var 2))))))
private theorem no_v701156253934 : ¬ MinimalInterpreter v701156253934 :=
  chain_cut false 2 (by decide)
private def v701156235502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 2))) (.var 2))))))
private theorem no_v701156235502 : ¬ MinimalInterpreter v701156235502 :=
  chain_cut false 2 (by decide)
private def v701166231054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2))))))))))
private theorem no_v701166231054 : ¬ MinimalInterpreter v701166231054 :=
  chain_cut false 2 (by decide)
private def v701166185998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))))))))
private theorem no_v701166185998 : ¬ MinimalInterpreter v701166185998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166182638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)))))))
private theorem no_v701166182638 : ¬ MinimalInterpreter v701166182638 :=
  chain_cut false 2 (by decide)
private def v701203979790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2))))))))))
private theorem no_v701203979790 : ¬ MinimalInterpreter v701203979790 :=
  chain_cut false 6 (by decide)
private def v701203934734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))))))))
private theorem no_v701203934734 : ¬ MinimalInterpreter v701203934734 :=
  w_cut false 0 (by decide)
private def v701203931374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)))))))
private theorem no_v701203931374 : ¬ MinimalInterpreter v701203931374 :=
  chain_cut false 7 (by decide)
theorem row168 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,2,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,2,2] = [v701153622510,v701153619694,v701153597934,v701153595118,v701153588974,v701154256782,v701154245518,v701154244846,v701154158478,v701154147214,v701154122638,v701154135790,v701154146542,v701154121966,v701156793870,v701156748814,v701156745454,v701156400654,v701156321166,v701156355598,v701156257294,v701156236174,v701156352238,v701156253934,v701156235502,v701166231054,v701166185998,v701166182638,v701203979790,v701203934734,v701203931374] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153622510) (.cons (no_v701153619694) (.cons (no_v701153597934) (.cons (no_v701153595118) (.cons (no_v701153588974) (.cons (no_v701154256782) (.cons (no_v701154245518) (.cons (no_v701154244846) (.cons (no_v701154158478) (.cons (no_v701154147214) (.cons (no_v701154122638) (.cons (no_v701154135790) (.cons (no_v701154146542) (.cons (no_v701154121966) (.cons (no_v701156793870) (.cons (no_v701156748814) (.cons (no_v701156745454) (.cons (no_v701156400654) (.cons (no_v701156321166) (.cons (no_v701156355598) (.cons (no_v701156257294) (.cons (no_v701156236174) (.cons (no_v701156352238) (.cons (no_v701156253934) (.cons (no_v701156235502) (.cons (no_v701166231054) (.cons (no_v701166185998) (.cons (no_v701166182638) (.cons (no_v701203979790) (.cons (no_v701203934734) (.cons (no_v701203931374) .nil)))))))))))))))))))))))))))))))

private def v701153622518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1))))))))))
private theorem no_v701153622518 : ¬ MinimalInterpreter v701153622518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153619702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1)))))))))
private theorem no_v701153619702 : ¬ MinimalInterpreter v701153619702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153597942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 1)))))))))
private theorem no_v701153597942 : ¬ MinimalInterpreter v701153597942 :=
  cost_cut false 2 (by decide)
private def v701153595126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 1))))))))
private theorem no_v701153595126 : ¬ MinimalInterpreter v701153595126 :=
  cost_cut false 2 (by decide)
private def v701153588982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 1))))))))
private theorem no_v701153588982 : ¬ MinimalInterpreter v701153588982 :=
  cost_cut false 2 (by decide)
private def v701154255350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 1))))))))))
private theorem no_v701154255350 : ¬ MinimalInterpreter v701154255350 :=
  cost_cut false 2 (by decide)
private def v701154256838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v701154256838 : ¬ MinimalInterpreter v701154256838 :=
  chain_cut false 2 (by decide)
private def v701154245574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v701154245574 : ¬ MinimalInterpreter v701154245574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154244854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1))))))))
private theorem no_v701154244854 : ¬ MinimalInterpreter v701154244854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
private def v701154157046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v701154157046 : ¬ MinimalInterpreter v701154157046 :=
  cost_cut false 2 (by decide)
private def v701154158534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.lam (.var 1)))))))))
private theorem no_v701154158534 : ¬ MinimalInterpreter v701154158534 :=
  chain_cut false 2 (by decide)
private def v701154138614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 3) (.var 1))))))))
private theorem no_v701154138614 : ¬ MinimalInterpreter v701154138614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154147270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.lam (.var 1))))))))
private theorem no_v701154147270 : ¬ MinimalInterpreter v701154147270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154122694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.var 1))))))))
private theorem no_v701154122694 : ¬ MinimalInterpreter v701154122694 :=
  chain_cut false 2 (by decide)
private def v701154135798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 3)))) (.var 1)))))))
private theorem no_v701154135798 : ¬ MinimalInterpreter v701154135798 :=
  cost_cut false 2 (by decide)
private def v701154146550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v701154146550 : ¬ MinimalInterpreter v701154146550 :=
  cost_cut false 2 (by decide)
private def v701154121974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v701154121974 : ¬ MinimalInterpreter v701154121974 :=
  cost_cut false 2 (by decide)
private def v701154117366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 3)) (.var 1)))))))
private theorem no_v701154117366 : ¬ MinimalInterpreter v701154117366 :=
  chain_cut false 2 (by decide)
private def v701156614646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1))))))))))
private theorem no_v701156614646 : ¬ MinimalInterpreter v701156614646 :=
  cost_cut false 2 (by decide)
private def v701156616134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v701156616134 : ¬ MinimalInterpreter v701156616134 :=
  chain_cut false 2 (by decide)
private def v701156604870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v701156604870 : ¬ MinimalInterpreter v701156604870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 3)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))
private def v701156746182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))))))))
private theorem no_v701156746182 : ¬ MinimalInterpreter v701156746182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 1)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v701156352966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.lam (.var 1)))))))
private theorem no_v701156352966 : ¬ MinimalInterpreter v701156352966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (so_dead (by decide) (.var 1))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v701156254662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.lam (.var 1)))))))
private theorem no_v701156254662 : ¬ MinimalInterpreter v701156254662 :=
  chain_cut false 2 (by decide)
private def v701156235510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 3))) (.var 1))))))
private theorem no_v701156235510 : ¬ MinimalInterpreter v701156235510 :=
  chain_cut false 2 (by decide)
private def v701166051830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1))))))))))
private theorem no_v701166051830 : ¬ MinimalInterpreter v701166051830 :=
  cost_cut false 2 (by decide)
private def v701166183366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))))))))
private theorem no_v701166183366 : ¬ MinimalInterpreter v701166183366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 1))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v701203802054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v701203802054 : ¬ MinimalInterpreter v701203802054 :=
  chain_cut false 4 (by decide)
private def v701203790790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v701203790790 : ¬ MinimalInterpreter v701203790790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 3)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701203932102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))))))))
private theorem no_v701203932102 : ¬ MinimalInterpreter v701203932102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 1))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
theorem row169 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,3,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,3,1] = [v701153622518,v701153619702,v701153597942,v701153595126,v701153588982,v701154255350,v701154256838,v701154245574,v701154244854,v701154157046,v701154158534,v701154138614,v701154147270,v701154122694,v701154135798,v701154146550,v701154121974,v701154117366,v701156614646,v701156616134,v701156604870,v701156746182,v701156352966,v701156254662,v701156235510,v701166051830,v701166183366,v701203802054,v701203790790,v701203932102] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153622518) (.cons (no_v701153619702) (.cons (no_v701153597942) (.cons (no_v701153595126) (.cons (no_v701153588982) (.cons (no_v701154255350) (.cons (no_v701154256838) (.cons (no_v701154245574) (.cons (no_v701154244854) (.cons (no_v701154157046) (.cons (no_v701154158534) (.cons (no_v701154138614) (.cons (no_v701154147270) (.cons (no_v701154122694) (.cons (no_v701154135798) (.cons (no_v701154146550) (.cons (no_v701154121974) (.cons (no_v701154117366) (.cons (no_v701156614646) (.cons (no_v701156616134) (.cons (no_v701156604870) (.cons (no_v701156746182) (.cons (no_v701156352966) (.cons (no_v701156254662) (.cons (no_v701156235510) (.cons (no_v701166051830) (.cons (no_v701166183366) (.cons (no_v701203802054) (.cons (no_v701203790790) (.cons (no_v701203932102) .nil))))))))))))))))))))))))))))))

private def v701153622522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 4) (.var 0))))))))))
private theorem no_v701153622522 : ¬ MinimalInterpreter v701153622522 :=
  chain_cut false 2 (by decide)
private def v701153619706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 4)) (.var 0)))))))))
private theorem no_v701153619706 : ¬ MinimalInterpreter v701153619706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 4)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 4)) (.var 0))) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153597946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 4) (.var 0)))))))))
private theorem no_v701153597946 : ¬ MinimalInterpreter v701153597946 :=
  chain_cut false 2 (by decide)
private def v701153595130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 4))) (.var 0))))))))
private theorem no_v701153595130 : ¬ MinimalInterpreter v701153595130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 4))) (.var 0)) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153588986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 4)) (.var 0))))))))
private theorem no_v701153588986 : ¬ MinimalInterpreter v701153588986 :=
  chain_cut false 2 (by decide)
private def v701154212346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 4) (.var 0))))))))))
private theorem no_v701154212346 : ¬ MinimalInterpreter v701154212346 :=
  chain_cut false 2 (by decide)
private def v701154209530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 4)) (.var 0)))))))))
private theorem no_v701154209530 : ¬ MinimalInterpreter v701154209530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 4)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 4)) (.var 0)) (.app (.var 0) (.var 3)) (by decide) (by decide))) (.var 2) (by decide) (by decide)))))))
private def v701154244858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 4))) (.var 0))))))))
private theorem no_v701154244858 : ¬ MinimalInterpreter v701154244858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701154146554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.var 0)))))))
private theorem no_v701154146554 : ¬ MinimalInterpreter v701154146554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 4)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701154121978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.var 0)))))))
private theorem no_v701154121978 : ¬ MinimalInterpreter v701154121978 :=
  chain_cut false 2 (by decide)
private def v701156604154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 4))) (.var 0))))))))
private theorem no_v701156604154 : ¬ MinimalInterpreter v701156604154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701156745466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)))))))
private theorem no_v701156745466 : ¬ MinimalInterpreter v701156745466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 0))) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
private def v701156352250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))) (.var 0))))))
private theorem no_v701156352250 : ¬ MinimalInterpreter v701156352250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4))))) (.var 0)) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
private def v701156253946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 4)))) (.var 0))))))
private theorem no_v701156253946 : ¬ MinimalInterpreter v701156253946 :=
  chain_cut false 2 (by decide)
private def v701166182650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)))))))
private theorem no_v701166182650 : ¬ MinimalInterpreter v701166182650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide))) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
private def v701203757562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 4) (.var 0))))))))))
private theorem no_v701203757562 : ¬ MinimalInterpreter v701203757562 :=
  chain_cut false 4 (by decide)
private def v701203754746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.var 0)))))))))
private theorem no_v701203754746 : ¬ MinimalInterpreter v701203754746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 4)) (.var 0)) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))
private def v701203790074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.var 0))))))))
private theorem no_v701203790074 : ¬ MinimalInterpreter v701203790074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide)))))))
private def v701203931386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)))))))
private theorem no_v701203931386 : ¬ MinimalInterpreter v701203931386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide))))))
theorem row170 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,4,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,4,0] = [v701153622522,v701153619706,v701153597946,v701153595130,v701153588986,v701154212346,v701154209530,v701154244858,v701154146554,v701154121978,v701156604154,v701156745466,v701156352250,v701156253946,v701166182650,v701203757562,v701203754746,v701203790074,v701203931386] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153622522) (.cons (no_v701153619706) (.cons (no_v701153597946) (.cons (no_v701153595130) (.cons (no_v701153588986) (.cons (no_v701154212346) (.cons (no_v701154209530) (.cons (no_v701154244858) (.cons (no_v701154146554) (.cons (no_v701154121978) (.cons (no_v701156604154) (.cons (no_v701156745466) (.cons (no_v701156352250) (.cons (no_v701156253946) (.cons (no_v701166182650) (.cons (no_v701203757562) (.cons (no_v701203754746) (.cons (no_v701203790074) (.cons (no_v701203931386) .nil)))))))))))))))))))

private def v701153623262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 3))))))))))
private theorem no_v701153623262 : ¬ MinimalInterpreter v701153623262 :=
  cost_cut false 2 (by decide)
private def v701153619806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 3)))))))))
private theorem no_v701153619806 : ¬ MinimalInterpreter v701153619806 :=
  cost_cut false 2 (by decide)
private def v701153598686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 3)))))))))
private theorem no_v701153598686 : ¬ MinimalInterpreter v701153598686 :=
  cost_cut false 2 (by decide)
private def v701153595230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 3))))))))
private theorem no_v701153595230 : ¬ MinimalInterpreter v701153595230 :=
  cost_cut false 2 (by decide)
private def v701153589086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))))))
private theorem no_v701153589086 : ¬ MinimalInterpreter v701153589086 :=
  cost_cut false 2 (by decide)
private def v701154139358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 3))))))))
private theorem no_v701154139358 : ¬ MinimalInterpreter v701154139358 :=
  chain_cut false 2 (by decide)
private def v701154117470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 3)))))))
private theorem no_v701154117470 : ¬ MinimalInterpreter v701154117470 :=
  chain_cut false 2 (by decide)
private def v701156572382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3))))))))))
private theorem no_v701156572382 : ¬ MinimalInterpreter v701156572382 :=
  cost_cut false 2 (by decide)
private def v701156568926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))))))
private theorem no_v701156568926 : ¬ MinimalInterpreter v701156568926 :=
  cost_cut false 2 (by decide)
private def v701156805662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3))))))))))
private theorem no_v701156805662 : ¬ MinimalInterpreter v701156805662 :=
  chain_cut false 2 (by decide)
private def v701156750366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3)))))))))
private theorem no_v701156750366 : ¬ MinimalInterpreter v701156750366 :=
  chain_cut false 2 (by decide)
private def v701156412446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.var 3)))))))))
private theorem no_v701156412446 : ¬ MinimalInterpreter v701156412446 :=
  chain_cut false 2 (by decide)
private def v701156324126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v701156324126 : ¬ MinimalInterpreter v701156324126 :=
  chain_cut false 2 (by decide)
private def v701156357150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.var 3))))))))
private theorem no_v701156357150 : ¬ MinimalInterpreter v701156357150 :=
  chain_cut false 2 (by decide)
private def v701156258846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 3))))))))
private theorem no_v701156258846 : ¬ MinimalInterpreter v701156258846 :=
  chain_cut false 2 (by decide)
private def v701156236574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.lam (.var 3)))))))
private theorem no_v701156236574 : ¬ MinimalInterpreter v701156236574 :=
  chain_cut false 2 (by decide)
private def v701166009566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3))))))))))
private theorem no_v701166009566 : ¬ MinimalInterpreter v701166009566 :=
  cost_cut false 2 (by decide)
private def v701166006110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))))))
private theorem no_v701166006110 : ¬ MinimalInterpreter v701166006110 :=
  cost_cut false 2 (by decide)
private def v701166242846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3))))))))))
private theorem no_v701166242846 : ¬ MinimalInterpreter v701166242846 :=
  chain_cut false 2 (by decide)
private def v701166187550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3)))))))))
private theorem no_v701166187550 : ¬ MinimalInterpreter v701166187550 :=
  chain_cut false 2 (by decide)
private def v701203991582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3))))))))))
private theorem no_v701203991582 : ¬ MinimalInterpreter v701203991582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203936286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3)))))))))
private theorem no_v701203936286 : ¬ MinimalInterpreter v701203936286 :=
  chain_cut false 5 (by decide)
theorem row171 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,0,3]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,0,3] = [v701153623262,v701153619806,v701153598686,v701153595230,v701153589086,v701154139358,v701154117470,v701156572382,v701156568926,v701156805662,v701156750366,v701156412446,v701156324126,v701156357150,v701156258846,v701156236574,v701166009566,v701166006110,v701166242846,v701166187550,v701203991582,v701203936286] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623262) (.cons (no_v701153619806) (.cons (no_v701153598686) (.cons (no_v701153595230) (.cons (no_v701153589086) (.cons (no_v701154139358) (.cons (no_v701154117470) (.cons (no_v701156572382) (.cons (no_v701156568926) (.cons (no_v701156805662) (.cons (no_v701156750366) (.cons (no_v701156412446) (.cons (no_v701156324126) (.cons (no_v701156357150) (.cons (no_v701156258846) (.cons (no_v701156236574) (.cons (no_v701166009566) (.cons (no_v701166006110) (.cons (no_v701166242846) (.cons (no_v701166187550) (.cons (no_v701203991582) (.cons (no_v701203936286) .nil))))))))))))))))))))))

private def v701153623278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))))
private theorem no_v701153623278 : ¬ MinimalInterpreter v701153623278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701153619822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))))
private theorem no_v701153619822 : ¬ MinimalInterpreter v701153619822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701153598702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2)))))))))
private theorem no_v701153598702 : ¬ MinimalInterpreter v701153598702 :=
  cost_cut false 2 (by decide)
private def v701153595246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2))))))))
private theorem no_v701153595246 : ¬ MinimalInterpreter v701153595246 :=
  cost_cut false 2 (by decide)
private def v701153589102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2))))))))
private theorem no_v701153589102 : ¬ MinimalInterpreter v701153589102 :=
  cost_cut false 2 (by decide)
private def v701154259182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v701154259182 : ¬ MinimalInterpreter v701154259182 :=
  cost_cut false 2 (by decide)
private def v701154259854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))))))
private theorem no_v701154259854 : ¬ MinimalInterpreter v701154259854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154246030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))))))
private theorem no_v701154246030 : ¬ MinimalInterpreter v701154246030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154160878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v701154160878 : ¬ MinimalInterpreter v701154160878 :=
  cost_cut false 2 (by decide)
private def v701154161550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v701154161550 : ¬ MinimalInterpreter v701154161550 :=
  cost_cut false 2 (by decide)
private def v701154139374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.var 2))))))))
private theorem no_v701154139374 : ¬ MinimalInterpreter v701154139374 :=
  cost_cut false 2 (by decide)
private def v701154147726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 2))))))))
private theorem no_v701154147726 : ¬ MinimalInterpreter v701154147726 :=
  cost_cut false 2 (by decide)
private def v701154123150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 2))))))))
private theorem no_v701154123150 : ¬ MinimalInterpreter v701154123150 :=
  cost_cut false 2 (by decide)
private def v701154135918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 2)))))))
private theorem no_v701154135918 : ¬ MinimalInterpreter v701154135918 :=
  cost_cut false 2 (by decide)
private def v701154117486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2)))))))
private theorem no_v701154117486 : ¬ MinimalInterpreter v701154117486 :=
  cost_cut false 2 (by decide)
private def v701156618478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v701156618478 : ¬ MinimalInterpreter v701156618478 :=
  cost_cut false 2 (by decide)
private def v701156806158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))))))))
private theorem no_v701156806158 : ¬ MinimalInterpreter v701156806158 :=
  chain_cut false 2 (by decide)
private def v701156750862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))))))))
private theorem no_v701156750862 : ¬ MinimalInterpreter v701156750862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 2)))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156749710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2))))))))
private theorem no_v701156749710 : ¬ MinimalInterpreter v701156749710 :=
  chain_cut false 2 (by decide)
private def v701156412942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 2)))))))))
private theorem no_v701156412942 : ¬ MinimalInterpreter v701156412942 :=
  chain_cut false 2 (by decide)
private def v701156302062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156302062 : ¬ MinimalInterpreter v701156302062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156357646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2))))))))
private theorem no_v701156357646 : ¬ MinimalInterpreter v701156357646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156259342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 2))))))))
private theorem no_v701156259342 : ¬ MinimalInterpreter v701156259342 :=
  chain_cut false 2 (by decide)
private def v701156356494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 2)))))))
private theorem no_v701156356494 : ¬ MinimalInterpreter v701156356494 :=
  chain_cut false 2 (by decide)
private def v701156258190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.lam (.var 2)))))))
private theorem no_v701156258190 : ¬ MinimalInterpreter v701156258190 :=
  chain_cut false 2 (by decide)
private def v701156236398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 1))) (.var 2))))))
private theorem no_v701156236398 : ¬ MinimalInterpreter v701156236398 :=
  chain_cut false 2 (by decide)
private def v701156231022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.var 2))))))
private theorem no_v701156231022 : ¬ MinimalInterpreter v701156231022 :=
  chain_cut false 2 (by decide)
private def v701166055662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v701166055662 : ¬ MinimalInterpreter v701166055662 :=
  cost_cut false 2 (by decide)
private def v701166243342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))))))))
private theorem no_v701166243342 : ¬ MinimalInterpreter v701166243342 :=
  chain_cut false 2 (by decide)
private def v701166188046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))))))))
private theorem no_v701166188046 : ¬ MinimalInterpreter v701166188046 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166186894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2))))))))
private theorem no_v701166186894 : ¬ MinimalInterpreter v701166186894 :=
  chain_cut false 2 (by decide)
private def v701203992078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))))))))
private theorem no_v701203992078 : ¬ MinimalInterpreter v701203992078 :=
  chain_cut false 10 (by decide)
private def v701203936782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))))))))
private theorem no_v701203936782 : ¬ MinimalInterpreter v701203936782 :=
  w_cut false 0 (by decide)
private def v701203935630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2))))))))
private theorem no_v701203935630 : ¬ MinimalInterpreter v701203935630 :=
  chain_cut false 5 (by decide)
theorem row172 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,1,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,1,2] = [v701153623278,v701153619822,v701153598702,v701153595246,v701153589102,v701154259182,v701154259854,v701154246030,v701154160878,v701154161550,v701154139374,v701154147726,v701154123150,v701154135918,v701154117486,v701156618478,v701156806158,v701156750862,v701156749710,v701156412942,v701156302062,v701156357646,v701156259342,v701156356494,v701156258190,v701156236398,v701156231022,v701166055662,v701166243342,v701166188046,v701166186894,v701203992078,v701203936782,v701203935630] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623278) (.cons (no_v701153619822) (.cons (no_v701153598702) (.cons (no_v701153595246) (.cons (no_v701153589102) (.cons (no_v701154259182) (.cons (no_v701154259854) (.cons (no_v701154246030) (.cons (no_v701154160878) (.cons (no_v701154161550) (.cons (no_v701154139374) (.cons (no_v701154147726) (.cons (no_v701154123150) (.cons (no_v701154135918) (.cons (no_v701154117486) (.cons (no_v701156618478) (.cons (no_v701156806158) (.cons (no_v701156750862) (.cons (no_v701156749710) (.cons (no_v701156412942) (.cons (no_v701156302062) (.cons (no_v701156357646) (.cons (no_v701156259342) (.cons (no_v701156356494) (.cons (no_v701156258190) (.cons (no_v701156236398) (.cons (no_v701156231022) (.cons (no_v701166055662) (.cons (no_v701166243342) (.cons (no_v701166188046) (.cons (no_v701166186894) (.cons (no_v701203992078) (.cons (no_v701203936782) (.cons (no_v701203935630) .nil))))))))))))))))))))))))))))))))))

private def v701153623286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))))
private theorem no_v701153623286 : ¬ MinimalInterpreter v701153623286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701153619830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))))
private theorem no_v701153619830 : ¬ MinimalInterpreter v701153619830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))))
private def v701153598710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1)))))))))
private theorem no_v701153598710 : ¬ MinimalInterpreter v701153598710 :=
  cost_cut false 2 (by decide)
private def v701153595254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1))))))))
private theorem no_v701153595254 : ¬ MinimalInterpreter v701153595254 :=
  cost_cut false 2 (by decide)
private def v701153589110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1))))))))
private theorem no_v701153589110 : ¬ MinimalInterpreter v701153589110 :=
  cost_cut false 2 (by decide)
private def v701154259190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v701154259190 : ¬ MinimalInterpreter v701154259190 :=
  cost_cut false 2 (by decide)
private def v701154245750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))))))
private theorem no_v701154245750 : ¬ MinimalInterpreter v701154245750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154160886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v701154160886 : ¬ MinimalInterpreter v701154160886 :=
  cost_cut false 2 (by decide)
private def v701154139382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 1))))))))
private theorem no_v701154139382 : ¬ MinimalInterpreter v701154139382 :=
  cost_cut false 2 (by decide)
private def v701154147446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 1)))))))
private theorem no_v701154147446 : ¬ MinimalInterpreter v701154147446 :=
  cost_cut false 2 (by decide)
private def v701154122870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 1)))))))
private theorem no_v701154122870 : ¬ MinimalInterpreter v701154122870 :=
  cost_cut false 2 (by decide)
private def v701154117494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 1)))))))
private theorem no_v701154117494 : ¬ MinimalInterpreter v701154117494 :=
  cost_cut false 2 (by decide)
private def v701156618486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v701156618486 : ¬ MinimalInterpreter v701156618486 :=
  cost_cut false 2 (by decide)
private def v701156749766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))))))))
private theorem no_v701156749766 : ¬ MinimalInterpreter v701156749766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156749430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1)))))))
private theorem no_v701156749430 : ¬ MinimalInterpreter v701156749430 :=
  chain_cut false 2 (by decide)
private def v701156324294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v701156324294 : ¬ MinimalInterpreter v701156324294 :=
  chain_cut false 2 (by decide)
private def v701156302070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156302070 : ¬ MinimalInterpreter v701156302070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156356550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1)))))))
private theorem no_v701156356550 : ¬ MinimalInterpreter v701156356550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (so_dead (by decide) (.var 1))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156258246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.lam (.var 1)))))))
private theorem no_v701156258246 : ¬ MinimalInterpreter v701156258246 :=
  chain_cut false 2 (by decide)
private def v701156236742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.lam (.var 1)))))))
private theorem no_v701156236742 : ¬ MinimalInterpreter v701156236742 :=
  chain_cut false 2 (by decide)
private def v701156356214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 2))))) (.var 1))))))
private theorem no_v701156356214 : ¬ MinimalInterpreter v701156356214 :=
  chain_cut false 2 (by decide)
private def v701156257910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 2)))) (.var 1))))))
private theorem no_v701156257910 : ¬ MinimalInterpreter v701156257910 :=
  chain_cut false 2 (by decide)
private def v701156231030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 2)) (.var 1))))))
private theorem no_v701156231030 : ¬ MinimalInterpreter v701156231030 :=
  chain_cut false 2 (by decide)
private def v701166055670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v701166055670 : ¬ MinimalInterpreter v701166055670 :=
  cost_cut false 2 (by decide)
private def v701166186950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))))))))
private theorem no_v701166186950 : ¬ MinimalInterpreter v701166186950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166186614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1)))))))
private theorem no_v701166186614 : ¬ MinimalInterpreter v701166186614 :=
  chain_cut false 2 (by decide)
private def v701203935686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))))))))
private theorem no_v701203935686 : ¬ MinimalInterpreter v701203935686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701203935350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1)))))))
private theorem no_v701203935350 : ¬ MinimalInterpreter v701203935350 :=
  chain_cut false 5 (by decide)
theorem row173 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,2,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,2,1] = [v701153623286,v701153619830,v701153598710,v701153595254,v701153589110,v701154259190,v701154245750,v701154160886,v701154139382,v701154147446,v701154122870,v701154117494,v701156618486,v701156749766,v701156749430,v701156324294,v701156302070,v701156356550,v701156258246,v701156236742,v701156356214,v701156257910,v701156231030,v701166055670,v701166186950,v701166186614,v701203935686,v701203935350] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623286) (.cons (no_v701153619830) (.cons (no_v701153598710) (.cons (no_v701153595254) (.cons (no_v701153589110) (.cons (no_v701154259190) (.cons (no_v701154245750) (.cons (no_v701154160886) (.cons (no_v701154139382) (.cons (no_v701154147446) (.cons (no_v701154122870) (.cons (no_v701154117494) (.cons (no_v701156618486) (.cons (no_v701156749766) (.cons (no_v701156749430) (.cons (no_v701156324294) (.cons (no_v701156302070) (.cons (no_v701156356550) (.cons (no_v701156258246) (.cons (no_v701156236742) (.cons (no_v701156356214) (.cons (no_v701156257910) (.cons (no_v701156231030) (.cons (no_v701166055670) (.cons (no_v701166186950) (.cons (no_v701166186614) (.cons (no_v701203935686) (.cons (no_v701203935350) .nil))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
