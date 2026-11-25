import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701156768238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v701156768238 : ¬ MinimalInterpreter v701156768238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156765422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v701156765422 : ¬ MinimalInterpreter v701156765422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156743662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v701156743662 : ¬ MinimalInterpreter v701156743662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156740846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v701156740846 : ¬ MinimalInterpreter v701156740846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156734702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v701156734702 : ¬ MinimalInterpreter v701156734702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156375022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v701156375022 : ¬ MinimalInterpreter v701156375022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156372206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v701156372206 : ¬ MinimalInterpreter v701156372206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156350446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 2)))))))
private theorem no_v701156350446 : ¬ MinimalInterpreter v701156350446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156252142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v701156252142 : ¬ MinimalInterpreter v701156252142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156347630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v701156347630 : ¬ MinimalInterpreter v701156347630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156341486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 2))))))
private theorem no_v701156341486 : ¬ MinimalInterpreter v701156341486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156249326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v701156249326 : ¬ MinimalInterpreter v701156249326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156243182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.var 2))))))
private theorem no_v701156243182 : ¬ MinimalInterpreter v701156243182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156218606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v701156218606 : ¬ MinimalInterpreter v701156218606 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701166205422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v701166205422 : ¬ MinimalInterpreter v701166205422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide))) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701166202606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v701166202606 : ¬ MinimalInterpreter v701166202606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166180846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v701166180846 : ¬ MinimalInterpreter v701166180846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166178030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v701166178030 : ¬ MinimalInterpreter v701166178030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166171886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v701166171886 : ¬ MinimalInterpreter v701166171886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203954158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v701203954158 : ¬ MinimalInterpreter v701203954158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))
private def v701203951342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v701203951342 : ¬ MinimalInterpreter v701203951342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701203929582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v701203929582 : ¬ MinimalInterpreter v701203929582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203926766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v701203926766 : ¬ MinimalInterpreter v701203926766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203920622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v701203920622 : ¬ MinimalInterpreter v701203920622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row0 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,0,1,2,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,0,1,2,2] = [v701156768238,v701156765422,v701156743662,v701156740846,v701156734702,v701156375022,v701156372206,v701156350446,v701156252142,v701156347630,v701156341486,v701156249326,v701156243182,v701156218606,v701166205422,v701166202606,v701166180846,v701166178030,v701166171886,v701203954158,v701203951342,v701203929582,v701203926766,v701203920622] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156768238) (.cons (no_v701156765422) (.cons (no_v701156743662) (.cons (no_v701156740846) (.cons (no_v701156734702) (.cons (no_v701156375022) (.cons (no_v701156372206) (.cons (no_v701156350446) (.cons (no_v701156252142) (.cons (no_v701156347630) (.cons (no_v701156341486) (.cons (no_v701156249326) (.cons (no_v701156243182) (.cons (no_v701156218606) (.cons (no_v701166205422) (.cons (no_v701166202606) (.cons (no_v701166180846) (.cons (no_v701166178030) (.cons (no_v701166171886) (.cons (no_v701203954158) (.cons (no_v701203951342) (.cons (no_v701203929582) (.cons (no_v701203926766) (.cons (no_v701203920622) .nil))))))))))))))))))))))))

private def v701156769006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v701156769006 : ¬ MinimalInterpreter v701156769006 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156765550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v701156765550 : ¬ MinimalInterpreter v701156765550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156744430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v701156744430 : ¬ MinimalInterpreter v701156744430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156740974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v701156740974 : ¬ MinimalInterpreter v701156740974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156734830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v701156734830 : ¬ MinimalInterpreter v701156734830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156375790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v701156375790 : ¬ MinimalInterpreter v701156375790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156372334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v701156372334 : ¬ MinimalInterpreter v701156372334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156351214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156351214 : ¬ MinimalInterpreter v701156351214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156252910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v701156252910 : ¬ MinimalInterpreter v701156252910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156347758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v701156347758 : ¬ MinimalInterpreter v701156347758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156341614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 2))))))
private theorem no_v701156341614 : ¬ MinimalInterpreter v701156341614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156249454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v701156249454 : ¬ MinimalInterpreter v701156249454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156243310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.var 2))))))
private theorem no_v701156243310 : ¬ MinimalInterpreter v701156243310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156218734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v701156218734 : ¬ MinimalInterpreter v701156218734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701166206190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v701166206190 : ¬ MinimalInterpreter v701166206190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166202734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v701166202734 : ¬ MinimalInterpreter v701166202734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166181614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v701166181614 : ¬ MinimalInterpreter v701166181614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166178158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v701166178158 : ¬ MinimalInterpreter v701166178158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166172014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v701166172014 : ¬ MinimalInterpreter v701166172014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203954926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v701203954926 : ¬ MinimalInterpreter v701203954926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701203951470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v701203951470 : ¬ MinimalInterpreter v701203951470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701203930350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v701203930350 : ¬ MinimalInterpreter v701203930350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203926894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v701203926894 : ¬ MinimalInterpreter v701203926894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203920750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v701203920750 : ¬ MinimalInterpreter v701203920750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row1 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,0,2,1,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,0,2,1,2] = [v701156769006,v701156765550,v701156744430,v701156740974,v701156734830,v701156375790,v701156372334,v701156351214,v701156252910,v701156347758,v701156341614,v701156249454,v701156243310,v701156218734,v701166206190,v701166202734,v701166181614,v701166178158,v701166172014,v701203954926,v701203951470,v701203930350,v701203926894,v701203920750] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156769006) (.cons (no_v701156765550) (.cons (no_v701156744430) (.cons (no_v701156740974) (.cons (no_v701156734830) (.cons (no_v701156375790) (.cons (no_v701156372334) (.cons (no_v701156351214) (.cons (no_v701156252910) (.cons (no_v701156347758) (.cons (no_v701156341614) (.cons (no_v701156249454) (.cons (no_v701156243310) (.cons (no_v701156218734) (.cons (no_v701166206190) (.cons (no_v701166202734) (.cons (no_v701166181614) (.cons (no_v701166178158) (.cons (no_v701166172014) (.cons (no_v701203954926) (.cons (no_v701203951470) (.cons (no_v701203930350) (.cons (no_v701203926894) (.cons (no_v701203920750) .nil))))))))))))))))))))))))

private def v701156769014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v701156769014 : ¬ MinimalInterpreter v701156769014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156765558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v701156765558 : ¬ MinimalInterpreter v701156765558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156744438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v701156744438 : ¬ MinimalInterpreter v701156744438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156740982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v701156740982 : ¬ MinimalInterpreter v701156740982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156734838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v701156734838 : ¬ MinimalInterpreter v701156734838 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156375798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v701156375798 : ¬ MinimalInterpreter v701156375798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156372342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v701156372342 : ¬ MinimalInterpreter v701156372342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156351222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156351222 : ¬ MinimalInterpreter v701156351222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156252918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v701156252918 : ¬ MinimalInterpreter v701156252918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156347766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 2)))) (.var 1))))))
private theorem no_v701156347766 : ¬ MinimalInterpreter v701156347766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156341622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 2))) (.var 1))))))
private theorem no_v701156341622 : ¬ MinimalInterpreter v701156341622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156249462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v701156249462 : ¬ MinimalInterpreter v701156249462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156243318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 2)) (.var 1))))))
private theorem no_v701156243318 : ¬ MinimalInterpreter v701156243318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156218742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v701156218742 : ¬ MinimalInterpreter v701156218742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701166206198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v701166206198 : ¬ MinimalInterpreter v701166206198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166202742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v701166202742 : ¬ MinimalInterpreter v701166202742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide))) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701166181622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v701166181622 : ¬ MinimalInterpreter v701166181622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166178166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v701166178166 : ¬ MinimalInterpreter v701166178166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166172022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v701166172022 : ¬ MinimalInterpreter v701166172022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203954934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v701203954934 : ¬ MinimalInterpreter v701203954934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701203951478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v701203951478 : ¬ MinimalInterpreter v701203951478 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))
private def v701203930358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v701203930358 : ¬ MinimalInterpreter v701203930358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203926902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v701203926902 : ¬ MinimalInterpreter v701203926902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203920758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v701203920758 : ¬ MinimalInterpreter v701203920758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row2 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,0,2,2,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,0,2,2,1] = [v701156769014,v701156765558,v701156744438,v701156740982,v701156734838,v701156375798,v701156372342,v701156351222,v701156252918,v701156347766,v701156341622,v701156249462,v701156243318,v701156218742,v701166206198,v701166202742,v701166181622,v701166178166,v701166172022,v701203954934,v701203951478,v701203930358,v701203926902,v701203920758] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156769014) (.cons (no_v701156765558) (.cons (no_v701156744438) (.cons (no_v701156740982) (.cons (no_v701156734838) (.cons (no_v701156375798) (.cons (no_v701156372342) (.cons (no_v701156351222) (.cons (no_v701156252918) (.cons (no_v701156347766) (.cons (no_v701156341622) (.cons (no_v701156249462) (.cons (no_v701156243318) (.cons (no_v701156218742) (.cons (no_v701166206198) (.cons (no_v701166202742) (.cons (no_v701166181622) (.cons (no_v701166178166) (.cons (no_v701166172022) (.cons (no_v701203954934) (.cons (no_v701203951478) (.cons (no_v701203930358) (.cons (no_v701203926902) (.cons (no_v701203920758) .nil))))))))))))))))))))))))

private def v701156792814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v701156792814 : ¬ MinimalInterpreter v701156792814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156792046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v701156792046 : ¬ MinimalInterpreter v701156792046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156747758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v701156747758 : ¬ MinimalInterpreter v701156747758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156746990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v701156746990 : ¬ MinimalInterpreter v701156746990 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156735726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v701156735726 : ¬ MinimalInterpreter v701156735726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156399598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 2))))))))
private theorem no_v701156399598 : ¬ MinimalInterpreter v701156399598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156398830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 2)))))))
private theorem no_v701156398830 : ¬ MinimalInterpreter v701156398830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156354542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 2)))))))
private theorem no_v701156354542 : ¬ MinimalInterpreter v701156354542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156256238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 2)))))))
private theorem no_v701156256238 : ¬ MinimalInterpreter v701156256238 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156353774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 2))))))
private theorem no_v701156353774 : ¬ MinimalInterpreter v701156353774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156342510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 2))))))
private theorem no_v701156342510 : ¬ MinimalInterpreter v701156342510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156255470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 2))))))
private theorem no_v701156255470 : ¬ MinimalInterpreter v701156255470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156244206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 2))))))
private theorem no_v701156244206 : ¬ MinimalInterpreter v701156244206 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156219630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 2))))))
private theorem no_v701156219630 : ¬ MinimalInterpreter v701156219630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166229998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v701166229998 : ¬ MinimalInterpreter v701166229998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166229230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v701166229230 : ¬ MinimalInterpreter v701166229230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166184942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v701166184942 : ¬ MinimalInterpreter v701166184942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166184174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v701166184174 : ¬ MinimalInterpreter v701166184174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166172910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v701166172910 : ¬ MinimalInterpreter v701166172910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203978734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v701203978734 : ¬ MinimalInterpreter v701203978734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203977966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v701203977966 : ¬ MinimalInterpreter v701203977966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203933678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v701203933678 : ¬ MinimalInterpreter v701203933678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203932910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v701203932910 : ¬ MinimalInterpreter v701203932910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203921646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v701203921646 : ¬ MinimalInterpreter v701203921646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row3 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,0,2,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,0,2,2] = [v701156792814,v701156792046,v701156747758,v701156746990,v701156735726,v701156399598,v701156398830,v701156354542,v701156256238,v701156353774,v701156342510,v701156255470,v701156244206,v701156219630,v701166229998,v701166229230,v701166184942,v701166184174,v701166172910,v701203978734,v701203977966,v701203933678,v701203932910,v701203921646] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156792814) (.cons (no_v701156792046) (.cons (no_v701156747758) (.cons (no_v701156746990) (.cons (no_v701156735726) (.cons (no_v701156399598) (.cons (no_v701156398830) (.cons (no_v701156354542) (.cons (no_v701156256238) (.cons (no_v701156353774) (.cons (no_v701156342510) (.cons (no_v701156255470) (.cons (no_v701156244206) (.cons (no_v701156219630) (.cons (no_v701166229998) (.cons (no_v701166229230) (.cons (no_v701166184942) (.cons (no_v701166184174) (.cons (no_v701166172910) (.cons (no_v701203978734) (.cons (no_v701203977966) (.cons (no_v701203933678) (.cons (no_v701203932910) (.cons (no_v701203921646) .nil))))))))))))))))))))))))

private def v701156793582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v701156793582 : ¬ MinimalInterpreter v701156793582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156792174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v701156792174 : ¬ MinimalInterpreter v701156792174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156748526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v701156748526 : ¬ MinimalInterpreter v701156748526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156747118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v701156747118 : ¬ MinimalInterpreter v701156747118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156735854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v701156735854 : ¬ MinimalInterpreter v701156735854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156400366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v701156400366 : ¬ MinimalInterpreter v701156400366 :=
  chain_cut false 2 (by decide)
private def v701156398958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v701156398958 : ¬ MinimalInterpreter v701156398958 :=
  chain_cut false 2 (by decide)
private def v701156355310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156355310 : ¬ MinimalInterpreter v701156355310 :=
  chain_cut false 2 (by decide)
private def v701156257006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v701156257006 : ¬ MinimalInterpreter v701156257006 :=
  chain_cut false 2 (by decide)
private def v701156353902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v701156353902 : ¬ MinimalInterpreter v701156353902 :=
  chain_cut false 2 (by decide)
private def v701156342638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 2))))))
private theorem no_v701156342638 : ¬ MinimalInterpreter v701156342638 :=
  chain_cut false 2 (by decide)
private def v701156255598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v701156255598 : ¬ MinimalInterpreter v701156255598 :=
  chain_cut false 2 (by decide)
private def v701156244334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v701156244334 : ¬ MinimalInterpreter v701156244334 :=
  chain_cut false 2 (by decide)
private def v701156219758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v701156219758 : ¬ MinimalInterpreter v701156219758 :=
  chain_cut false 2 (by decide)
theorem row4 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,1,1,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,1,1,2] = [v701156793582,v701156792174,v701156748526,v701156747118,v701156735854,v701156400366,v701156398958,v701156355310,v701156257006,v701156353902,v701156342638,v701156255598,v701156244334,v701156219758] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156793582) (.cons (no_v701156792174) (.cons (no_v701156748526) (.cons (no_v701156747118) (.cons (no_v701156735854) (.cons (no_v701156400366) (.cons (no_v701156398958) (.cons (no_v701156355310) (.cons (no_v701156257006) (.cons (no_v701156353902) (.cons (no_v701156342638) (.cons (no_v701156255598) (.cons (no_v701156244334) (.cons (no_v701156219758) .nil))))))))))))))

private def v701156793590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v701156793590 : ¬ MinimalInterpreter v701156793590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156792182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v701156792182 : ¬ MinimalInterpreter v701156792182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156748534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v701156748534 : ¬ MinimalInterpreter v701156748534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156747126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v701156747126 : ¬ MinimalInterpreter v701156747126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156735862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v701156735862 : ¬ MinimalInterpreter v701156735862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156400374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v701156400374 : ¬ MinimalInterpreter v701156400374 :=
  chain_cut false 2 (by decide)
private def v701156398966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v701156398966 : ¬ MinimalInterpreter v701156398966 :=
  chain_cut false 2 (by decide)
private def v701156355318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156355318 : ¬ MinimalInterpreter v701156355318 :=
  chain_cut false 2 (by decide)
private def v701156257014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v701156257014 : ¬ MinimalInterpreter v701156257014 :=
  chain_cut false 2 (by decide)
private def v701156353910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 1))))))
private theorem no_v701156353910 : ¬ MinimalInterpreter v701156353910 :=
  chain_cut false 2 (by decide)
private def v701156342646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 1))))))
private theorem no_v701156342646 : ¬ MinimalInterpreter v701156342646 :=
  chain_cut false 2 (by decide)
private def v701156255606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v701156255606 : ¬ MinimalInterpreter v701156255606 :=
  chain_cut false 2 (by decide)
private def v701156244342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v701156244342 : ¬ MinimalInterpreter v701156244342 :=
  chain_cut false 2 (by decide)
private def v701156219766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v701156219766 : ¬ MinimalInterpreter v701156219766 :=
  chain_cut false 2 (by decide)
theorem row5 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,1,2,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,1,1,2,1] = [v701156793590,v701156792182,v701156748534,v701156747126,v701156735862,v701156400374,v701156398966,v701156355318,v701156257014,v701156353910,v701156342646,v701156255606,v701156244342,v701156219766] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156793590) (.cons (no_v701156792182) (.cons (no_v701156748534) (.cons (no_v701156747126) (.cons (no_v701156735862) (.cons (no_v701156400374) (.cons (no_v701156398966) (.cons (no_v701156355318) (.cons (no_v701156257014) (.cons (no_v701156353910) (.cons (no_v701156342646) (.cons (no_v701156255606) (.cons (no_v701156244342) (.cons (no_v701156219766) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
