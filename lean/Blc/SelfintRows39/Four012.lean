import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154261494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 3) (.var 1)))))))))
private theorem no_v701154261494 : ¬ MinimalInterpreter v701154261494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.app (.var 2) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 3) (.var 1)))) (.app (.var 2) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154246390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 3)) (.var 1))))))))
private theorem no_v701154246390 : ¬ MinimalInterpreter v701154246390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 2) (.var 2)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 3)) (.var 1))) (.app (.app (.var 2) (.var 2)) (.var 0)) (by decide) (by decide)) (.app (.var 1) (.var 1)) (by decide) (by decide))))))
private def v701154163190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 3) (.var 1))))))))
private theorem no_v701154163190 : ¬ MinimalInterpreter v701154163190 :=
  chain_cut true 3 (by decide)
private def v701154148086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 3))) (.var 1)))))))
private theorem no_v701154148086 : ¬ MinimalInterpreter v701154148086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154123510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 3)) (.var 1)))))))
private theorem no_v701154123510 : ¬ MinimalInterpreter v701154123510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156310774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 3)))) (.var 1))))))
private theorem no_v701156310774 : ¬ MinimalInterpreter v701156310774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row72 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [0,3,3,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [0,3,3,1] = [v701154261494,v701154246390,v701154163190,v701154148086,v701154123510,v701156310774] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154261494) (.cons (no_v701154246390) (.cons (no_v701154163190) (.cons (no_v701154148086) (.cons (no_v701154123510) (.cons (no_v701156310774) .nil))))))

private def v701154355166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 3)))))))))
private theorem no_v701154355166 : ¬ MinimalInterpreter v701154355166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154352094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 3))))))))
private theorem no_v701154352094 : ¬ MinimalInterpreter v701154352094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154174942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 3))))))))
private theorem no_v701154174942 : ¬ MinimalInterpreter v701154174942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154171870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 3)))))))
private theorem no_v701154171870 : ¬ MinimalInterpreter v701154171870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154126814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 3)))))))
private theorem no_v701154126814 : ¬ MinimalInterpreter v701154126814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157181406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 3)))))))))
private theorem no_v701157181406 : ¬ MinimalInterpreter v701157181406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156460510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 3))))))))
private theorem no_v701156460510 : ¬ MinimalInterpreter v701156460510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row73 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,0,3,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,0,3,3] = [v701154355166,v701154352094,v701154174942,v701154171870,v701154126814,v701157181406,v701156460510] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154355166) (.cons (no_v701154352094) (.cons (no_v701154174942) (.cons (no_v701154171870) (.cons (no_v701154126814) (.cons (no_v701157181406) (.cons (no_v701156460510) .nil)))))))

private def v701154358238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v701154358238 : ¬ MinimalInterpreter v701154358238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.app (.var 1) (.var 2))))) (so_dead (by decide) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 3))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154352606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v701154352606 : ¬ MinimalInterpreter v701154352606 :=
  chain_cut false 2 (by decide)
private def v701154178014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 3))))))))
private theorem no_v701154178014 : ¬ MinimalInterpreter v701154178014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 3)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (so_dead (by decide) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154172382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 3)))))))
private theorem no_v701154172382 : ¬ MinimalInterpreter v701154172382 :=
  chain_cut false 2 (by decide)
private def v701154127326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 3)))))))
private theorem no_v701154127326 : ¬ MinimalInterpreter v701154127326 :=
  chain_cut false 2 (by decide)
private def v701157110750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v701157110750 : ¬ MinimalInterpreter v701157110750 :=
  chain_cut false 2 (by decide)
private def v701157105118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v701157105118 : ¬ MinimalInterpreter v701157105118 :=
  chain_cut false 2 (by decide)
private def v701168120798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v701168120798 : ¬ MinimalInterpreter v701168120798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168115166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v701168115166 : ¬ MinimalInterpreter v701168115166 :=
  chain_cut false 6 (by decide)
theorem row74 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,1,2,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,1,2,3] = [v701154358238,v701154352606,v701154178014,v701154172382,v701154127326,v701157110750,v701157105118,v701168120798,v701168115166] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154358238) (.cons (no_v701154352606) (.cons (no_v701154178014) (.cons (no_v701154172382) (.cons (no_v701154127326) (.cons (no_v701157110750) (.cons (no_v701157105118) (.cons (no_v701168120798) (.cons (no_v701168115166) .nil)))))))))

private def v701154358254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v701154358254 : ¬ MinimalInterpreter v701154358254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.app (.var 1) (.var 2))))) (so_dead (by decide) (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 2))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154352622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v701154352622 : ¬ MinimalInterpreter v701154352622 :=
  chain_cut false 2 (by decide)
private def v701154178030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 2))))))))
private theorem no_v701154178030 : ¬ MinimalInterpreter v701154178030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 2)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (so_dead (by decide) (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154172398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 2)))))))
private theorem no_v701154172398 : ¬ MinimalInterpreter v701154172398 :=
  chain_cut false 2 (by decide)
private def v701154127342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 2)))))))
private theorem no_v701154127342 : ¬ MinimalInterpreter v701154127342 :=
  chain_cut false 2 (by decide)
private def v701157110766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v701157110766 : ¬ MinimalInterpreter v701157110766 :=
  chain_cut false 2 (by decide)
private def v701157105134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v701157105134 : ¬ MinimalInterpreter v701157105134 :=
  chain_cut false 2 (by decide)
private def v701156433390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 2))))))
private theorem no_v701156433390 : ¬ MinimalInterpreter v701156433390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168120814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v701168120814 : ¬ MinimalInterpreter v701168120814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168115182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v701168115182 : ¬ MinimalInterpreter v701168115182 :=
  w_cut false 0 (by decide)
theorem row75 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,1,3,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,1,3,2] = [v701154358254,v701154352622,v701154178030,v701154172398,v701154127342,v701157110766,v701157105134,v701156433390,v701168120814,v701168115182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154358254) (.cons (no_v701154352622) (.cons (no_v701154178030) (.cons (no_v701154172398) (.cons (no_v701154127342) (.cons (no_v701157110766) (.cons (no_v701157105134) (.cons (no_v701156433390) (.cons (no_v701168120814) (.cons (no_v701168115182) .nil))))))))))

private def v701154359774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v701154359774 : ¬ MinimalInterpreter v701154359774 :=
  chain_cut false 2 (by decide)
private def v701154352862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v701154352862 : ¬ MinimalInterpreter v701154352862 :=
  chain_cut false 2 (by decide)
private def v701154179550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 3))))))))
private theorem no_v701154179550 : ¬ MinimalInterpreter v701154179550 :=
  chain_cut false 2 (by decide)
private def v701154172638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 3)))))))
private theorem no_v701154172638 : ¬ MinimalInterpreter v701154172638 :=
  chain_cut false 2 (by decide)
private def v701154127582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 3)))))))
private theorem no_v701154127582 : ¬ MinimalInterpreter v701154127582 :=
  chain_cut false 2 (by decide)
private def v701157112286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v701157112286 : ¬ MinimalInterpreter v701157112286 :=
  chain_cut false 2 (by decide)
private def v701157105374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v701157105374 : ¬ MinimalInterpreter v701157105374 :=
  chain_cut false 2 (by decide)
private def v701157204446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v701157204446 : ¬ MinimalInterpreter v701157204446 :=
  chain_cut true 4 (by decide)
private def v701156483550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v701156483550 : ¬ MinimalInterpreter v701156483550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168122334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v701168122334 : ¬ MinimalInterpreter v701168122334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168115422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v701168115422 : ¬ MinimalInterpreter v701168115422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row76 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,2,1,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,2,1,3] = [v701154359774,v701154352862,v701154179550,v701154172638,v701154127582,v701157112286,v701157105374,v701157204446,v701156483550,v701168122334,v701168115422] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154359774) (.cons (no_v701154352862) (.cons (no_v701154179550) (.cons (no_v701154172638) (.cons (no_v701154127582) (.cons (no_v701157112286) (.cons (no_v701157105374) (.cons (no_v701157204446) (.cons (no_v701156483550) (.cons (no_v701168122334) (.cons (no_v701168115422) .nil)))))))))))

theorem row77 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,2,2,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
