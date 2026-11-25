import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154352238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v701154352238 : ¬ MinimalInterpreter v701154352238 :=
  cost_cut false 2 (by decide)
private def v701154168046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2))))))))
private theorem no_v701154168046 : ¬ MinimalInterpreter v701154168046 :=
  cost_cut false 2 (by decide)
private def v701154166638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.var 2)))))))
private theorem no_v701154166638 : ¬ MinimalInterpreter v701154166638 :=
  cost_cut false 2 (by decide)
private def v701154172014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v701154172014 : ¬ MinimalInterpreter v701154172014 :=
  cost_cut false 2 (by decide)
private def v701154126958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v701154126958 : ¬ MinimalInterpreter v701154126958 :=
  cost_cut false 2 (by decide)
private def v701154124654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2)))))))
private theorem no_v701154124654 : ¬ MinimalInterpreter v701154124654 :=
  cost_cut false 2 (by decide)
private def v701157104750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v701157104750 : ¬ MinimalInterpreter v701157104750 :=
  cost_cut false 2 (by decide)
private def v701156265070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1))) (.var 2))))))
private theorem no_v701156265070 : ¬ MinimalInterpreter v701156265070 :=
  chain_cut false 2 (by decide)
theorem row186 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,1,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,1,2] = [v701154352238,v701154168046,v701154166638,v701154172014,v701154126958,v701154124654,v701157104750,v701156265070] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154352238) (.cons (no_v701154168046) (.cons (no_v701154166638) (.cons (no_v701154172014) (.cons (no_v701154126958) (.cons (no_v701154124654) (.cons (no_v701157104750) (.cons (no_v701156265070) .nil))))))))

private def v701154358214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v701154358214 : ¬ MinimalInterpreter v701154358214 :=
  cost_cut false 2 (by decide)
private def v701154352582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v701154352582 : ¬ MinimalInterpreter v701154352582 :=
  cost_cut false 2 (by decide)
private def v701154177990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v701154177990 : ¬ MinimalInterpreter v701154177990 :=
  cost_cut false 2 (by decide)
private def v701154168054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 1))))))))
private theorem no_v701154168054 : ¬ MinimalInterpreter v701154168054 :=
  cost_cut false 2 (by decide)
private def v701154172358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))))))
private theorem no_v701154172358 : ¬ MinimalInterpreter v701154172358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154127302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v701154127302 : ¬ MinimalInterpreter v701154127302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154124662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 1)))))))
private theorem no_v701154124662 : ¬ MinimalInterpreter v701154124662 :=
  cost_cut false 2 (by decide)
private def v701157110726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v701157110726 : ¬ MinimalInterpreter v701157110726 :=
  cost_cut false 2 (by decide)
private def v701157105094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v701157105094 : ¬ MinimalInterpreter v701157105094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156438982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v701156438982 : ¬ MinimalInterpreter v701156438982 :=
  chain_cut false 2 (by decide)
private def v701156265414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.lam (.var 1)))))))
private theorem no_v701156265414 : ¬ MinimalInterpreter v701156265414 :=
  chain_cut false 2 (by decide)
theorem row187 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,2,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,2,1] = [v701154358214,v701154352582,v701154177990,v701154168054,v701154172358,v701154127302,v701154124662,v701157110726,v701157105094,v701156438982,v701156265414] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154358214) (.cons (no_v701154352582) (.cons (no_v701154177990) (.cons (no_v701154168054) (.cons (no_v701154172358) (.cons (no_v701154127302) (.cons (no_v701154124662) (.cons (no_v701157110726) (.cons (no_v701157105094) (.cons (no_v701156438982) (.cons (no_v701156265414) .nil)))))))))))

private def v701153647866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v701153647866 : ¬ MinimalInterpreter v701153647866 :=
  cost_cut false 2 (by decide)
private def v701153646458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v701153646458 : ¬ MinimalInterpreter v701153646458 :=
  cost_cut false 2 (by decide)
private def v701153602810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0)))))))))
private theorem no_v701153602810 : ¬ MinimalInterpreter v701153602810 :=
  cost_cut false 2 (by decide)
private def v701153601402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0))))))))
private theorem no_v701153601402 : ¬ MinimalInterpreter v701153601402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153590138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0))))))))
private theorem no_v701153590138 : ¬ MinimalInterpreter v701153590138 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701154352250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v701154352250 : ¬ MinimalInterpreter v701154352250 :=
  cost_cut false 2 (by decide)
private def v701154168058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 3) (.var 0))))))))
private theorem no_v701154168058 : ¬ MinimalInterpreter v701154168058 :=
  chain_cut false 2 (by decide)
private def v701154166650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 0)))))))
private theorem no_v701154166650 : ¬ MinimalInterpreter v701154166650 :=
  cost_cut false 2 (by decide)
private def v701154172026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v701154172026 : ¬ MinimalInterpreter v701154172026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
private def v701154126970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v701154126970 : ¬ MinimalInterpreter v701154126970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
private def v701154124666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 3)) (.var 0)))))))
private theorem no_v701154124666 : ¬ MinimalInterpreter v701154124666 :=
  chain_cut false 2 (by decide)
private def v701157088506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v701157088506 : ¬ MinimalInterpreter v701157088506 :=
  cost_cut false 2 (by decide)
private def v701157087098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v701157087098 : ¬ MinimalInterpreter v701157087098 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))
private def v701157104762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v701157104762 : ¬ MinimalInterpreter v701157104762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156265082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 3))) (.var 0))))))
private theorem no_v701156265082 : ¬ MinimalInterpreter v701156265082 :=
  chain_cut false 2 (by decide)
theorem row188 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,3,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,3,0] = [v701153647866,v701153646458,v701153602810,v701153601402,v701153590138,v701154352250,v701154168058,v701154166650,v701154172026,v701154126970,v701154124666,v701157088506,v701157087098,v701157104762,v701156265082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153647866) (.cons (no_v701153646458) (.cons (no_v701153602810) (.cons (no_v701153601402) (.cons (no_v701153590138) (.cons (no_v701154352250) (.cons (no_v701154168058) (.cons (no_v701154166650) (.cons (no_v701154172026) (.cons (no_v701154126970) (.cons (no_v701154124666) (.cons (no_v701157088506) (.cons (no_v701157087098) (.cons (no_v701157104762) (.cons (no_v701156265082) .nil)))))))))))))))

private def v701153648238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2))))))))))
private theorem no_v701153648238 : ¬ MinimalInterpreter v701153648238 :=
  cost_cut false 2 (by decide)
private def v701153646510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2)))))))))
private theorem no_v701153646510 : ¬ MinimalInterpreter v701153646510 :=
  cost_cut false 2 (by decide)
private def v701153603182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2)))))))))
private theorem no_v701153603182 : ¬ MinimalInterpreter v701153603182 :=
  cost_cut false 2 (by decide)
private def v701153601454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2))))))))
private theorem no_v701153601454 : ¬ MinimalInterpreter v701153601454 :=
  cost_cut false 2 (by decide)
private def v701153590190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2))))))))
private theorem no_v701153590190 : ¬ MinimalInterpreter v701153590190 :=
  cost_cut false 2 (by decide)
private def v701154359694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v701154359694 : ¬ MinimalInterpreter v701154359694 :=
  cost_cut false 2 (by decide)
private def v701154352782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v701154352782 : ¬ MinimalInterpreter v701154352782 :=
  cost_cut false 2 (by decide)
private def v701154179470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v701154179470 : ¬ MinimalInterpreter v701154179470 :=
  cost_cut false 2 (by decide)
private def v701154168430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 2))))))))
private theorem no_v701154168430 : ¬ MinimalInterpreter v701154168430 :=
  cost_cut false 2 (by decide)
private def v701154172558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 2))))))))
private theorem no_v701154172558 : ¬ MinimalInterpreter v701154172558 :=
  cost_cut false 2 (by decide)
private def v701154127502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v701154127502 : ¬ MinimalInterpreter v701154127502 :=
  cost_cut false 2 (by decide)
private def v701154124718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 2)))))))
private theorem no_v701154124718 : ¬ MinimalInterpreter v701154124718 :=
  cost_cut false 2 (by decide)
private def v701157112206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v701157112206 : ¬ MinimalInterpreter v701157112206 :=
  cost_cut false 2 (by decide)
private def v701157105294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v701157105294 : ¬ MinimalInterpreter v701157105294 :=
  cost_cut false 2 (by decide)
private def v701157205518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 2))))))))))
private theorem no_v701157205518 : ¬ MinimalInterpreter v701157205518 :=
  chain_cut false 2 (by decide)
private def v701157177870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 2)))))))))
private theorem no_v701157177870 : ¬ MinimalInterpreter v701157177870 :=
  chain_cut false 2 (by decide)
private def v701156484622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 2)))))))))
private theorem no_v701156484622 : ¬ MinimalInterpreter v701156484622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2)))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156429422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156429422 : ¬ MinimalInterpreter v701156429422 :=
  chain_cut false 2 (by decide)
private def v701156456974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.var 2))))))))
private theorem no_v701156456974 : ¬ MinimalInterpreter v701156456974 :=
  chain_cut false 2 (by decide)
private def v701156276750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 2))))))))
private theorem no_v701156276750 : ¬ MinimalInterpreter v701156276750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156262830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0)) (.var 2))))))
private theorem no_v701156262830 : ¬ MinimalInterpreter v701156262830 :=
  chain_cut false 2 (by decide)
theorem row189 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,2,0,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,2,0,2] = [v701153648238,v701153646510,v701153603182,v701153601454,v701153590190,v701154359694,v701154352782,v701154179470,v701154168430,v701154172558,v701154127502,v701154124718,v701157112206,v701157105294,v701157205518,v701157177870,v701156484622,v701156429422,v701156456974,v701156276750,v701156262830] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153648238) (.cons (no_v701153646510) (.cons (no_v701153603182) (.cons (no_v701153601454) (.cons (no_v701153590190) (.cons (no_v701154359694) (.cons (no_v701154352782) (.cons (no_v701154179470) (.cons (no_v701154168430) (.cons (no_v701154172558) (.cons (no_v701154127502) (.cons (no_v701154124718) (.cons (no_v701157112206) (.cons (no_v701157105294) (.cons (no_v701157205518) (.cons (no_v701157177870) (.cons (no_v701156484622) (.cons (no_v701156429422) (.cons (no_v701156456974) (.cons (no_v701156276750) (.cons (no_v701156262830) .nil)))))))))))))))))))))

private def v701154359414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))))))
private theorem no_v701154359414 : ¬ MinimalInterpreter v701154359414 :=
  cost_cut false 2 (by decide)
private def v701154359750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v701154359750 : ¬ MinimalInterpreter v701154359750 :=
  cost_cut false 2 (by decide)
private def v701154352838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v701154352838 : ¬ MinimalInterpreter v701154352838 :=
  cost_cut false 2 (by decide)
private def v701154352694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v701154352694 : ¬ MinimalInterpreter v701154352694 :=
  cost_cut false 2 (by decide)
private def v701154179190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v701154179190 : ¬ MinimalInterpreter v701154179190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154179526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v701154179526 : ¬ MinimalInterpreter v701154179526 :=
  cost_cut false 2 (by decide)
private def v701154172614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))))))
private theorem no_v701154172614 : ¬ MinimalInterpreter v701154172614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154127558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v701154127558 : ¬ MinimalInterpreter v701154127558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154172470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v701154172470 : ¬ MinimalInterpreter v701154172470 :=
  cost_cut false 2 (by decide)
private def v701154127414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v701154127414 : ¬ MinimalInterpreter v701154127414 :=
  cost_cut false 2 (by decide)
private def v701157112262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v701157112262 : ¬ MinimalInterpreter v701157112262 :=
  cost_cut false 2 (by decide)
private def v701157105350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v701157105350 : ¬ MinimalInterpreter v701157105350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701157105206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v701157105206 : ¬ MinimalInterpreter v701157105206 :=
  cost_cut false 2 (by decide)
private def v701157177542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 1))))))))
private theorem no_v701157177542 : ¬ MinimalInterpreter v701157177542 :=
  chain_cut false 2 (by decide)
private def v701156456646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 1)))))))
private theorem no_v701156456646 : ¬ MinimalInterpreter v701156456646 :=
  chain_cut false 2 (by decide)
private def v701156276422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.lam (.var 1)))))))
private theorem no_v701156276422 : ¬ MinimalInterpreter v701156276422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row190 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,2,1,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,2,1,1] = [v701154359414,v701154359750,v701154352838,v701154352694,v701154179190,v701154179526,v701154172614,v701154127558,v701154172470,v701154127414,v701157112262,v701157105350,v701157105206,v701157177542,v701156456646,v701156276422] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154359414) (.cons (no_v701154359750) (.cons (no_v701154352838) (.cons (no_v701154352694) (.cons (no_v701154179190) (.cons (no_v701154179526) (.cons (no_v701154172614) (.cons (no_v701154127558) (.cons (no_v701154172470) (.cons (no_v701154127414) (.cons (no_v701157112262) (.cons (no_v701157105350) (.cons (no_v701157105206) (.cons (no_v701157177542) (.cons (no_v701156456646) (.cons (no_v701156276422) .nil))))))))))))))))

private def v701153648250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0))))))))))
private theorem no_v701153648250 : ¬ MinimalInterpreter v701153648250 :=
  cost_cut false 2 (by decide)
private def v701153646522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0)))))))))
private theorem no_v701153646522 : ¬ MinimalInterpreter v701153646522 :=
  cost_cut false 2 (by decide)
private def v701153603194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0)))))))))
private theorem no_v701153603194 : ¬ MinimalInterpreter v701153603194 :=
  cost_cut false 2 (by decide)
private def v701153601466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))))
private theorem no_v701153601466 : ¬ MinimalInterpreter v701153601466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))))
private def v701153590202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))))
private theorem no_v701153590202 : ¬ MinimalInterpreter v701153590202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701154352698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v701154352698 : ¬ MinimalInterpreter v701154352698 :=
  cost_cut false 2 (by decide)
private def v701154168442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
private theorem no_v701154168442 : ¬ MinimalInterpreter v701154168442 :=
  cost_cut false 2 (by decide)
private def v701154172474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v701154172474 : ¬ MinimalInterpreter v701154172474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154127418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v701154127418 : ¬ MinimalInterpreter v701154127418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154124730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))))))
private theorem no_v701154124730 : ¬ MinimalInterpreter v701154124730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701157105210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v701157105210 : ¬ MinimalInterpreter v701157105210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701157177402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 0)))))))
private theorem no_v701157177402 : ¬ MinimalInterpreter v701157177402 :=
  chain_cut false 2 (by decide)
private def v701156429434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156429434 : ¬ MinimalInterpreter v701156429434 :=
  chain_cut false 2 (by decide)
private def v701156456506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2))))) (.var 0))))))
private theorem no_v701156456506 : ¬ MinimalInterpreter v701156456506 :=
  chain_cut false 2 (by decide)
private def v701156276282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))) (.var 0))))))
private theorem no_v701156276282 : ¬ MinimalInterpreter v701156276282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156262842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)) (.var 0))))))
private theorem no_v701156262842 : ¬ MinimalInterpreter v701156262842 :=
  chain_cut false 2 (by decide)
theorem row191 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,2,2,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,2,2,0] = [v701153648250,v701153646522,v701153603194,v701153601466,v701153590202,v701154352698,v701154168442,v701154172474,v701154127418,v701154124730,v701157105210,v701157177402,v701156429434,v701156456506,v701156276282,v701156262842] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153648250) (.cons (no_v701153646522) (.cons (no_v701153603194) (.cons (no_v701153601466) (.cons (no_v701153590202) (.cons (no_v701154352698) (.cons (no_v701154168442) (.cons (no_v701154172474) (.cons (no_v701154127418) (.cons (no_v701154124730) (.cons (no_v701157105210) (.cons (no_v701157177402) (.cons (no_v701156429434) (.cons (no_v701156456506) (.cons (no_v701156276282) (.cons (no_v701156262842) .nil))))))))))))))))

end Blc.SelfintSingleObject.Rows39
