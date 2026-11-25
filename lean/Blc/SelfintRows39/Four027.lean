import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153620926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 4))))))))))
private theorem no_v701153620926 : ¬ MinimalInterpreter v701153620926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 4)))) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153619390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 4)))))))))
private theorem no_v701153619390 : ¬ MinimalInterpreter v701153619390 :=
  chain_cut false 2 (by decide)
private def v701153596350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 4)))))))))
private theorem no_v701153596350 : ¬ MinimalInterpreter v701153596350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 4))) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153594814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 4))))))))
private theorem no_v701153594814 : ¬ MinimalInterpreter v701153594814 :=
  chain_cut false 2 (by decide)
private def v701153588670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 4))))))))
private theorem no_v701153588670 : ¬ MinimalInterpreter v701153588670 :=
  chain_cut false 2 (by decide)
private def v701154210750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 4))))))))))
private theorem no_v701154210750 : ¬ MinimalInterpreter v701154210750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 4))) (.app (.var 0) (.var 3)) (by decide) (by decide))) (.var 2) (by decide) (by decide)))))))
private def v701154209214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 4)))))))))
private theorem no_v701154209214 : ¬ MinimalInterpreter v701154209214 :=
  chain_cut false 2 (by decide)
private def v701154250302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v701154250302 : ¬ MinimalInterpreter v701154250302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 4))))) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701154244158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))))
private theorem no_v701154244158 : ¬ MinimalInterpreter v701154244158 :=
  chain_cut false 2 (by decide)
private def v701154151998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 4)))))))))
private theorem no_v701154151998 : ¬ MinimalInterpreter v701154151998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 4)))) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701154145854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 4))))))))
private theorem no_v701154145854 : ¬ MinimalInterpreter v701154145854 :=
  chain_cut false 2 (by decide)
private def v701154121278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 4))))))))
private theorem no_v701154121278 : ¬ MinimalInterpreter v701154121278 :=
  chain_cut false 2 (by decide)
private def v701156609598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v701156609598 : ¬ MinimalInterpreter v701156609598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 4)))) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701156603454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))))
private theorem no_v701156603454 : ¬ MinimalInterpreter v701156603454 :=
  chain_cut false 2 (by decide)
private def v701156767806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))))))))
private theorem no_v701156767806 : ¬ MinimalInterpreter v701156767806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))))) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
private def v701156743230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 4)))))))))
private theorem no_v701156743230 : ¬ MinimalInterpreter v701156743230 :=
  chain_cut false 2 (by decide)
private def v701156374590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 4)))))))))
private theorem no_v701156374590 : ¬ MinimalInterpreter v701156374590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4))))) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
private def v701156350014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.lam (.var 4))))))))
private theorem no_v701156350014 : ¬ MinimalInterpreter v701156350014 :=
  chain_cut false 2 (by decide)
private def v701156251710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 4))))))))
private theorem no_v701156251710 : ¬ MinimalInterpreter v701156251710 :=
  chain_cut false 2 (by decide)
private def v701166204990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))))))))
private theorem no_v701166204990 : ¬ MinimalInterpreter v701166204990 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4))))) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide))) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
private def v701166180414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 4)))))))))
private theorem no_v701166180414 : ¬ MinimalInterpreter v701166180414 :=
  chain_cut false 2 (by decide)
private def v701203755966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 4))))))))))
private theorem no_v701203755966 : ¬ MinimalInterpreter v701203755966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 4))) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))
private def v701203754430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 4)))))))))
private theorem no_v701203754430 : ¬ MinimalInterpreter v701203754430 :=
  chain_cut false 4 (by decide)
private def v701203795518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v701203795518 : ¬ MinimalInterpreter v701203795518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 4)))) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide)))))))
private def v701203789374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))))
private theorem no_v701203789374 : ¬ MinimalInterpreter v701203789374 :=
  chain_cut false 4 (by decide)
private def v701203953726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))))))))
private theorem no_v701203953726 : ¬ MinimalInterpreter v701203953726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4))))) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide))))))
private def v701203929150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 4)))))))))
private theorem no_v701203929150 : ¬ MinimalInterpreter v701203929150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row162 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,1,4]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,1,4] = [v701153620926,v701153619390,v701153596350,v701153594814,v701153588670,v701154210750,v701154209214,v701154250302,v701154244158,v701154151998,v701154145854,v701154121278,v701156609598,v701156603454,v701156767806,v701156743230,v701156374590,v701156350014,v701156251710,v701166204990,v701166180414,v701203755966,v701203754430,v701203795518,v701203789374,v701203953726,v701203929150] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153620926) (.cons (no_v701153619390) (.cons (no_v701153596350) (.cons (no_v701153594814) (.cons (no_v701153588670) (.cons (no_v701154210750) (.cons (no_v701154209214) (.cons (no_v701154250302) (.cons (no_v701154244158) (.cons (no_v701154151998) (.cons (no_v701154145854) (.cons (no_v701154121278) (.cons (no_v701156609598) (.cons (no_v701156603454) (.cons (no_v701156767806) (.cons (no_v701156743230) (.cons (no_v701156374590) (.cons (no_v701156350014) (.cons (no_v701156251710) (.cons (no_v701166204990) (.cons (no_v701166180414) (.cons (no_v701203755966) (.cons (no_v701203754430) (.cons (no_v701203795518) (.cons (no_v701203789374) (.cons (no_v701203953726) (.cons (no_v701203929150) .nil)))))))))))))))))))))))))))

private def v701153620958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))))))
private theorem no_v701153620958 : ¬ MinimalInterpreter v701153620958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153619422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 3)))))))))
private theorem no_v701153619422 : ¬ MinimalInterpreter v701153619422 :=
  cost_cut false 2 (by decide)
private def v701153596382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))))))
private theorem no_v701153596382 : ¬ MinimalInterpreter v701153596382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153594846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 3))))))))
private theorem no_v701153594846 : ¬ MinimalInterpreter v701153594846 :=
  cost_cut false 2 (by decide)
private def v701153588702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 3))))))))
private theorem no_v701153588702 : ¬ MinimalInterpreter v701153588702 :=
  cost_cut false 2 (by decide)
private def v701154247646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))))
private theorem no_v701154247646 : ¬ MinimalInterpreter v701154247646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3))))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154243038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 3))))))))
private theorem no_v701154243038 : ¬ MinimalInterpreter v701154243038 :=
  chain_cut false 2 (by decide)
private def v701154149342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v701154149342 : ¬ MinimalInterpreter v701154149342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154144734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 3)))))))
private theorem no_v701154144734 : ¬ MinimalInterpreter v701154144734 :=
  chain_cut false 2 (by decide)
private def v701154120158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 3)))))))
private theorem no_v701154120158 : ¬ MinimalInterpreter v701154120158 :=
  chain_cut false 2 (by decide)
private def v701156570078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))))
private theorem no_v701156570078 : ¬ MinimalInterpreter v701156570078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))
private def v701156568542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))))))
private theorem no_v701156568542 : ¬ MinimalInterpreter v701156568542 :=
  cost_cut false 2 (by decide)
private def v701156606942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))))
private theorem no_v701156606942 : ¬ MinimalInterpreter v701156606942 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156602334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 3))))))))
private theorem no_v701156602334 : ¬ MinimalInterpreter v701156602334 :=
  chain_cut false 2 (by decide)
private def v701156768798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))))))))
private theorem no_v701156768798 : ¬ MinimalInterpreter v701156768798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))))) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156744222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3)))))))))
private theorem no_v701156744222 : ¬ MinimalInterpreter v701156744222 :=
  chain_cut false 2 (by decide)
private def v701156738846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 3))))))))
private theorem no_v701156738846 : ¬ MinimalInterpreter v701156738846 :=
  chain_cut false 2 (by decide)
private def v701156375582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 3)))))))))
private theorem no_v701156375582 : ¬ MinimalInterpreter v701156375582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 3))))))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156351006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.var 3))))))))
private theorem no_v701156351006 : ¬ MinimalInterpreter v701156351006 :=
  chain_cut false 2 (by decide)
private def v701156252702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 3))))))))
private theorem no_v701156252702 : ¬ MinimalInterpreter v701156252702 :=
  chain_cut false 2 (by decide)
private def v701156345630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 3)))))))
private theorem no_v701156345630 : ¬ MinimalInterpreter v701156345630 :=
  chain_cut false 2 (by decide)
private def v701156247326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 3)))))))
private theorem no_v701156247326 : ¬ MinimalInterpreter v701156247326 :=
  chain_cut false 2 (by decide)
private def v701166007262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))))
private theorem no_v701166007262 : ¬ MinimalInterpreter v701166007262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v701166005726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))))))
private theorem no_v701166005726 : ¬ MinimalInterpreter v701166005726 :=
  cost_cut false 2 (by decide)
private def v701166044126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))))
private theorem no_v701166044126 : ¬ MinimalInterpreter v701166044126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701166205982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))))))))
private theorem no_v701166205982 : ¬ MinimalInterpreter v701166205982 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166181406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3)))))))))
private theorem no_v701166181406 : ¬ MinimalInterpreter v701166181406 :=
  chain_cut false 2 (by decide)
private def v701166176030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 3))))))))
private theorem no_v701166176030 : ¬ MinimalInterpreter v701166176030 :=
  chain_cut false 2 (by decide)
private def v701203788254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 3))))))))
private theorem no_v701203788254 : ¬ MinimalInterpreter v701203788254 :=
  chain_cut false 4 (by decide)
private def v701203954718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))))))))
private theorem no_v701203954718 : ¬ MinimalInterpreter v701203954718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701203930142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3)))))))))
private theorem no_v701203930142 : ¬ MinimalInterpreter v701203930142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203924766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 3))))))))
private theorem no_v701203924766 : ¬ MinimalInterpreter v701203924766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row163 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,2,3]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,2,3] = [v701153620958,v701153619422,v701153596382,v701153594846,v701153588702,v701154247646,v701154243038,v701154149342,v701154144734,v701154120158,v701156570078,v701156568542,v701156606942,v701156602334,v701156768798,v701156744222,v701156738846,v701156375582,v701156351006,v701156252702,v701156345630,v701156247326,v701166007262,v701166005726,v701166044126,v701166205982,v701166181406,v701166176030,v701203788254,v701203954718,v701203930142,v701203924766] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153620958) (.cons (no_v701153619422) (.cons (no_v701153596382) (.cons (no_v701153594846) (.cons (no_v701153588702) (.cons (no_v701154247646) (.cons (no_v701154243038) (.cons (no_v701154149342) (.cons (no_v701154144734) (.cons (no_v701154120158) (.cons (no_v701156570078) (.cons (no_v701156568542) (.cons (no_v701156606942) (.cons (no_v701156602334) (.cons (no_v701156768798) (.cons (no_v701156744222) (.cons (no_v701156738846) (.cons (no_v701156375582) (.cons (no_v701156351006) (.cons (no_v701156252702) (.cons (no_v701156345630) (.cons (no_v701156247326) (.cons (no_v701166007262) (.cons (no_v701166005726) (.cons (no_v701166044126) (.cons (no_v701166205982) (.cons (no_v701166181406) (.cons (no_v701166176030) (.cons (no_v701203788254) (.cons (no_v701203954718) (.cons (no_v701203930142) (.cons (no_v701203924766) .nil))))))))))))))))))))))))))))))))

private def v701153620974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))))))
private theorem no_v701153620974 : ¬ MinimalInterpreter v701153620974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153619438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 2)))))))))
private theorem no_v701153619438 : ¬ MinimalInterpreter v701153619438 :=
  cost_cut false 2 (by decide)
private def v701153596398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))))))
private theorem no_v701153596398 : ¬ MinimalInterpreter v701153596398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153594862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2))))))))
private theorem no_v701153594862 : ¬ MinimalInterpreter v701153594862 :=
  cost_cut false 2 (by decide)
private def v701153588718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2))))))))
private theorem no_v701153588718 : ¬ MinimalInterpreter v701153588718 :=
  cost_cut false 2 (by decide)
private def v701154247662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))))
private theorem no_v701154247662 : ¬ MinimalInterpreter v701154247662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2))))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154250638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v701154250638 : ¬ MinimalInterpreter v701154250638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 2))))) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154244494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.lam (.var 2)))))))))
private theorem no_v701154244494 : ¬ MinimalInterpreter v701154244494 :=
  chain_cut false 2 (by decide)
private def v701154149358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v701154149358 : ¬ MinimalInterpreter v701154149358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154152334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.var 2)))))))))
private theorem no_v701154152334 : ¬ MinimalInterpreter v701154152334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (so_dead (by decide) (.var 2)))) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154146190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.lam (.var 2))))))))
private theorem no_v701154146190 : ¬ MinimalInterpreter v701154146190 :=
  chain_cut false 2 (by decide)
private def v701154121614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.var 2))))))))
private theorem no_v701154121614 : ¬ MinimalInterpreter v701154121614 :=
  chain_cut false 2 (by decide)
private def v701156570094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))))
private theorem no_v701156570094 : ¬ MinimalInterpreter v701156570094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))
private def v701156568558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2)))))))))
private theorem no_v701156568558 : ¬ MinimalInterpreter v701156568558 :=
  cost_cut false 2 (by decide)
private def v701156606958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))))
private theorem no_v701156606958 : ¬ MinimalInterpreter v701156606958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156609934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v701156609934 : ¬ MinimalInterpreter v701156609934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 2)))) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))
private def v701156603790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.lam (.var 2)))))))))
private theorem no_v701156603790 : ¬ MinimalInterpreter v701156603790 :=
  chain_cut false 2 (by decide)
private def v701156738958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 2))))))))
private theorem no_v701156738958 : ¬ MinimalInterpreter v701156738958 :=
  chain_cut false 2 (by decide)
private def v701156737518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)))))))
private theorem no_v701156737518 : ¬ MinimalInterpreter v701156737518 :=
  chain_cut false 2 (by decide)
private def v701156345742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.lam (.var 2)))))))
private theorem no_v701156345742 : ¬ MinimalInterpreter v701156345742 :=
  chain_cut false 2 (by decide)
private def v701156247438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.lam (.var 2)))))))
private theorem no_v701156247438 : ¬ MinimalInterpreter v701156247438 :=
  chain_cut false 2 (by decide)
private def v701156344302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))) (.var 2))))))
private theorem no_v701156344302 : ¬ MinimalInterpreter v701156344302 :=
  chain_cut false 2 (by decide)
private def v701156245998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.var 2))))))
private theorem no_v701156245998 : ¬ MinimalInterpreter v701156245998 :=
  chain_cut false 2 (by decide)
private def v701166007278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))))
private theorem no_v701166007278 : ¬ MinimalInterpreter v701166007278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v701166005742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2)))))))))
private theorem no_v701166005742 : ¬ MinimalInterpreter v701166005742 :=
  cost_cut false 2 (by decide)
private def v701166044142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))))
private theorem no_v701166044142 : ¬ MinimalInterpreter v701166044142 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701166176142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 2))))))))
private theorem no_v701166176142 : ¬ MinimalInterpreter v701166176142 :=
  chain_cut false 2 (by decide)
private def v701166174702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)))))))
private theorem no_v701166174702 : ¬ MinimalInterpreter v701166174702 :=
  chain_cut false 2 (by decide)
private def v701203795854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v701203795854 : ¬ MinimalInterpreter v701203795854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 2)))) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701203789710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.var 2)))))))))
private theorem no_v701203789710 : ¬ MinimalInterpreter v701203789710 :=
  chain_cut false 4 (by decide)
private def v701203924878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 2))))))))
private theorem no_v701203924878 : ¬ MinimalInterpreter v701203924878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203923438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)))))))
private theorem no_v701203923438 : ¬ MinimalInterpreter v701203923438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row164 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,3,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,3,2] = [v701153620974,v701153619438,v701153596398,v701153594862,v701153588718,v701154247662,v701154250638,v701154244494,v701154149358,v701154152334,v701154146190,v701154121614,v701156570094,v701156568558,v701156606958,v701156609934,v701156603790,v701156738958,v701156737518,v701156345742,v701156247438,v701156344302,v701156245998,v701166007278,v701166005742,v701166044142,v701166176142,v701166174702,v701203795854,v701203789710,v701203924878,v701203923438] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153620974) (.cons (no_v701153619438) (.cons (no_v701153596398) (.cons (no_v701153594862) (.cons (no_v701153588718) (.cons (no_v701154247662) (.cons (no_v701154250638) (.cons (no_v701154244494) (.cons (no_v701154149358) (.cons (no_v701154152334) (.cons (no_v701154146190) (.cons (no_v701154121614) (.cons (no_v701156570094) (.cons (no_v701156568558) (.cons (no_v701156606958) (.cons (no_v701156609934) (.cons (no_v701156603790) (.cons (no_v701156738958) (.cons (no_v701156737518) (.cons (no_v701156345742) (.cons (no_v701156247438) (.cons (no_v701156344302) (.cons (no_v701156245998) (.cons (no_v701166007278) (.cons (no_v701166005742) (.cons (no_v701166044142) (.cons (no_v701166176142) (.cons (no_v701166174702) (.cons (no_v701203795854) (.cons (no_v701203789710) (.cons (no_v701203924878) (.cons (no_v701203923438) .nil))))))))))))))))))))))))))))))))

private def v701153620982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 4) (.var 1))))))))))
private theorem no_v701153620982 : ¬ MinimalInterpreter v701153620982 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 4) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 4) (.var 1)))) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153619446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 4)) (.var 1)))))))))
private theorem no_v701153619446 : ¬ MinimalInterpreter v701153619446 :=
  chain_cut false 2 (by decide)
private def v701153596406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 1)))))))))
private theorem no_v701153596406 : ¬ MinimalInterpreter v701153596406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 1))) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153594870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 4))) (.var 1))))))))
private theorem no_v701153594870 : ¬ MinimalInterpreter v701153594870 :=
  chain_cut false 2 (by decide)
private def v701153588726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 4)) (.var 1))))))))
private theorem no_v701153588726 : ¬ MinimalInterpreter v701153588726 :=
  chain_cut false 2 (by decide)
private def v701154210806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 4) (.var 1))))))))))
private theorem no_v701154210806 : ¬ MinimalInterpreter v701154210806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 4) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 4) (.var 1))) (.app (.var 3) (.var 0)) (by decide) (by decide))) (.var 2) (by decide) (by decide)))))))
private def v701154209270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 4)) (.var 1)))))))))
private theorem no_v701154209270 : ¬ MinimalInterpreter v701154209270 :=
  chain_cut false 2 (by decide)
private def v701154243062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 4))) (.var 1))))))))
private theorem no_v701154243062 : ¬ MinimalInterpreter v701154243062 :=
  chain_cut false 2 (by decide)
private def v701154144758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 4)))) (.var 1)))))))
private theorem no_v701154144758 : ¬ MinimalInterpreter v701154144758 :=
  chain_cut false 2 (by decide)
private def v701154120182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 4))) (.var 1)))))))
private theorem no_v701154120182 : ¬ MinimalInterpreter v701154120182 :=
  chain_cut false 2 (by decide)
private def v701156602358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 1))))))))
private theorem no_v701156602358 : ¬ MinimalInterpreter v701156602358 :=
  chain_cut false 2 (by decide)
private def v701156737526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 1)))))))
private theorem no_v701156737526 : ¬ MinimalInterpreter v701156737526 :=
  chain_cut false 2 (by decide)
private def v701156344310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 4))))) (.var 1))))))
private theorem no_v701156344310 : ¬ MinimalInterpreter v701156344310 :=
  chain_cut false 2 (by decide)
private def v701156246006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))) (.var 1))))))
private theorem no_v701156246006 : ¬ MinimalInterpreter v701156246006 :=
  chain_cut false 2 (by decide)
private def v701166174710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 1)))))))
private theorem no_v701166174710 : ¬ MinimalInterpreter v701166174710 :=
  chain_cut false 2 (by decide)
private def v701203756022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 1))))))))))
private theorem no_v701203756022 : ¬ MinimalInterpreter v701203756022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 4) (.var 1))) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))
private def v701203754486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 1)))))))))
private theorem no_v701203754486 : ¬ MinimalInterpreter v701203754486 :=
  chain_cut false 4 (by decide)
private def v701203788278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 1))))))))
private theorem no_v701203788278 : ¬ MinimalInterpreter v701203788278 :=
  chain_cut false 4 (by decide)
private def v701203923446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 1)))))))
private theorem no_v701203923446 : ¬ MinimalInterpreter v701203923446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row165 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,4,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,0,4,1] = [v701153620982,v701153619446,v701153596406,v701153594870,v701153588726,v701154210806,v701154209270,v701154243062,v701154144758,v701154120182,v701156602358,v701156737526,v701156344310,v701156246006,v701166174710,v701203756022,v701203754486,v701203788278,v701203923446] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153620982) (.cons (no_v701153619446) (.cons (no_v701153596406) (.cons (no_v701153594870) (.cons (no_v701153588726) (.cons (no_v701154210806) (.cons (no_v701154209270) (.cons (no_v701154243062) (.cons (no_v701154144758) (.cons (no_v701154120182) (.cons (no_v701156602358) (.cons (no_v701156737526) (.cons (no_v701156344310) (.cons (no_v701156246006) (.cons (no_v701166174710) (.cons (no_v701203756022) (.cons (no_v701203754486) (.cons (no_v701203788278) (.cons (no_v701203923446) .nil)))))))))))))))))))

private def v701153622462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 4))))))))))
private theorem no_v701153622462 : ¬ MinimalInterpreter v701153622462 :=
  chain_cut false 2 (by decide)
private def v701153619646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 4)))))))))
private theorem no_v701153619646 : ¬ MinimalInterpreter v701153619646 :=
  chain_cut false 2 (by decide)
private def v701153597886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 4)))))))))
private theorem no_v701153597886 : ¬ MinimalInterpreter v701153597886 :=
  chain_cut false 2 (by decide)
private def v701153595070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 4))))))))
private theorem no_v701153595070 : ¬ MinimalInterpreter v701153595070 :=
  chain_cut false 2 (by decide)
private def v701153588926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 4))))))))
private theorem no_v701153588926 : ¬ MinimalInterpreter v701153588926 :=
  chain_cut false 2 (by decide)
private def v701154212286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 4))))))))))
private theorem no_v701154212286 : ¬ MinimalInterpreter v701154212286 :=
  chain_cut false 2 (by decide)
private def v701154209470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 4)))))))))
private theorem no_v701154209470 : ¬ MinimalInterpreter v701154209470 :=
  chain_cut false 2 (by decide)
private def v701154256446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v701154256446 : ¬ MinimalInterpreter v701154256446 :=
  chain_cut false 2 (by decide)
private def v701154245182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v701154245182 : ¬ MinimalInterpreter v701154245182 :=
  chain_cut false 2 (by decide)
private def v701154158142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 4)))))))))
private theorem no_v701154158142 : ¬ MinimalInterpreter v701154158142 :=
  chain_cut false 2 (by decide)
private def v701154146878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 4))))))))
private theorem no_v701154146878 : ¬ MinimalInterpreter v701154146878 :=
  chain_cut false 2 (by decide)
private def v701154122302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 4))))))))
private theorem no_v701154122302 : ¬ MinimalInterpreter v701154122302 :=
  chain_cut false 2 (by decide)
private def v701156615742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v701156615742 : ¬ MinimalInterpreter v701156615742 :=
  chain_cut false 2 (by decide)
private def v701156604478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v701156604478 : ¬ MinimalInterpreter v701156604478 :=
  chain_cut false 2 (by decide)
private def v701156792382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 4))))))))))
private theorem no_v701156792382 : ¬ MinimalInterpreter v701156792382 :=
  chain_cut false 2 (by decide)
private def v701156747326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 4)))))))))
private theorem no_v701156747326 : ¬ MinimalInterpreter v701156747326 :=
  chain_cut false 2 (by decide)
private def v701156399166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.var 4)))))))))
private theorem no_v701156399166 : ¬ MinimalInterpreter v701156399166 :=
  chain_cut false 2 (by decide)
private def v701156354110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.lam (.var 4))))))))
private theorem no_v701156354110 : ¬ MinimalInterpreter v701156354110 :=
  chain_cut false 2 (by decide)
private def v701156255806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 4))))))))
private theorem no_v701156255806 : ¬ MinimalInterpreter v701156255806 :=
  chain_cut false 2 (by decide)
private def v701166229566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 4))))))))))
private theorem no_v701166229566 : ¬ MinimalInterpreter v701166229566 :=
  chain_cut false 2 (by decide)
private def v701166184510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 4)))))))))
private theorem no_v701166184510 : ¬ MinimalInterpreter v701166184510 :=
  chain_cut false 2 (by decide)
private def v701203757502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 4))))))))))
private theorem no_v701203757502 : ¬ MinimalInterpreter v701203757502 :=
  chain_cut false 4 (by decide)
private def v701203754686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 4)))))))))
private theorem no_v701203754686 : ¬ MinimalInterpreter v701203754686 :=
  chain_cut false 4 (by decide)
private def v701203801662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v701203801662 : ¬ MinimalInterpreter v701203801662 :=
  chain_cut false 4 (by decide)
private def v701203790398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v701203790398 : ¬ MinimalInterpreter v701203790398 :=
  chain_cut false 4 (by decide)
private def v701203978302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 4))))))))))
private theorem no_v701203978302 : ¬ MinimalInterpreter v701203978302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203933246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 4)))))))))
private theorem no_v701203933246 : ¬ MinimalInterpreter v701203933246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row166 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,0,4]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,0,4] = [v701153622462,v701153619646,v701153597886,v701153595070,v701153588926,v701154212286,v701154209470,v701154256446,v701154245182,v701154158142,v701154146878,v701154122302,v701156615742,v701156604478,v701156792382,v701156747326,v701156399166,v701156354110,v701156255806,v701166229566,v701166184510,v701203757502,v701203754686,v701203801662,v701203790398,v701203978302,v701203933246] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153622462) (.cons (no_v701153619646) (.cons (no_v701153597886) (.cons (no_v701153595070) (.cons (no_v701153588926) (.cons (no_v701154212286) (.cons (no_v701154209470) (.cons (no_v701154256446) (.cons (no_v701154245182) (.cons (no_v701154158142) (.cons (no_v701154146878) (.cons (no_v701154122302) (.cons (no_v701156615742) (.cons (no_v701156604478) (.cons (no_v701156792382) (.cons (no_v701156747326) (.cons (no_v701156399166) (.cons (no_v701156354110) (.cons (no_v701156255806) (.cons (no_v701166229566) (.cons (no_v701166184510) (.cons (no_v701203757502) (.cons (no_v701203754686) (.cons (no_v701203801662) (.cons (no_v701203790398) (.cons (no_v701203978302) (.cons (no_v701203933246) .nil)))))))))))))))))))))))))))

private def v701153622494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3))))))))))
private theorem no_v701153622494 : ¬ MinimalInterpreter v701153622494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153619678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3)))))))))
private theorem no_v701153619678 : ¬ MinimalInterpreter v701153619678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153597918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 3)))))))))
private theorem no_v701153597918 : ¬ MinimalInterpreter v701153597918 :=
  cost_cut false 2 (by decide)
private def v701153595102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 3))))))))
private theorem no_v701153595102 : ¬ MinimalInterpreter v701153595102 :=
  cost_cut false 2 (by decide)
private def v701153588958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 3))))))))
private theorem no_v701153588958 : ¬ MinimalInterpreter v701153588958 :=
  cost_cut false 2 (by decide)
private def v701154255326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 3))))))))))
private theorem no_v701154255326 : ¬ MinimalInterpreter v701154255326 :=
  cost_cut false 2 (by decide)
private def v701154256670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v701154256670 : ¬ MinimalInterpreter v701154256670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
private def v701154245406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v701154245406 : ¬ MinimalInterpreter v701154245406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
private def v701154244830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 3))))))))
private theorem no_v701154244830 : ¬ MinimalInterpreter v701154244830 :=
  chain_cut false 2 (by decide)
private def v701154157022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v701154157022 : ¬ MinimalInterpreter v701154157022 :=
  cost_cut false 2 (by decide)
private def v701154158366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v701154158366 : ¬ MinimalInterpreter v701154158366 :=
  cost_cut false 2 (by decide)
private def v701154138590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 3))))))))
private theorem no_v701154138590 : ¬ MinimalInterpreter v701154138590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154147102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3))))))))
private theorem no_v701154147102 : ¬ MinimalInterpreter v701154147102 :=
  cost_cut false 2 (by decide)
private def v701154122526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v701154122526 : ¬ MinimalInterpreter v701154122526 :=
  cost_cut false 2 (by decide)
private def v701154146526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 3)))))))
private theorem no_v701154146526 : ¬ MinimalInterpreter v701154146526 :=
  chain_cut false 2 (by decide)
private def v701154121950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 3)))))))
private theorem no_v701154121950 : ¬ MinimalInterpreter v701154121950 :=
  chain_cut false 2 (by decide)
private def v701154117342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 3)))))))
private theorem no_v701154117342 : ¬ MinimalInterpreter v701154117342 :=
  chain_cut false 2 (by decide)
private def v701156614622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3))))))))))
private theorem no_v701156614622 : ¬ MinimalInterpreter v701156614622 :=
  cost_cut false 2 (by decide)
private def v701156604126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 3))))))))
private theorem no_v701156604126 : ¬ MinimalInterpreter v701156604126 :=
  chain_cut false 2 (by decide)
private def v701156746014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 3))))))))
private theorem no_v701156746014 : ¬ MinimalInterpreter v701156746014 :=
  chain_cut false 2 (by decide)
private def v701156321054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v701156321054 : ¬ MinimalInterpreter v701156321054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v701156352798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 3)))))))
private theorem no_v701156352798 : ¬ MinimalInterpreter v701156352798 :=
  chain_cut false 2 (by decide)
private def v701156254494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.lam (.var 3)))))))
private theorem no_v701156254494 : ¬ MinimalInterpreter v701156254494 :=
  chain_cut false 2 (by decide)
private def v701156236062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.lam (.var 3)))))))
private theorem no_v701156236062 : ¬ MinimalInterpreter v701156236062 :=
  chain_cut false 2 (by decide)
private def v701166051806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3))))))))))
private theorem no_v701166051806 : ¬ MinimalInterpreter v701166051806 :=
  cost_cut false 2 (by decide)
private def v701166183198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 3))))))))
private theorem no_v701166183198 : ¬ MinimalInterpreter v701166183198 :=
  chain_cut false 2 (by decide)
private def v701203790046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 3))))))))
private theorem no_v701203790046 : ¬ MinimalInterpreter v701203790046 :=
  chain_cut false 4 (by decide)
private def v701203931934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 3))))))))
private theorem no_v701203931934 : ¬ MinimalInterpreter v701203931934 :=
  chain_cut false 7 (by decide)
theorem row167 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,1,3]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,1,1,3] = [v701153622494,v701153619678,v701153597918,v701153595102,v701153588958,v701154255326,v701154256670,v701154245406,v701154244830,v701154157022,v701154158366,v701154138590,v701154147102,v701154122526,v701154146526,v701154121950,v701154117342,v701156614622,v701156604126,v701156746014,v701156321054,v701156352798,v701156254494,v701156236062,v701166051806,v701166183198,v701203790046,v701203931934] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153622494) (.cons (no_v701153619678) (.cons (no_v701153597918) (.cons (no_v701153595102) (.cons (no_v701153588958) (.cons (no_v701154255326) (.cons (no_v701154256670) (.cons (no_v701154245406) (.cons (no_v701154244830) (.cons (no_v701154157022) (.cons (no_v701154158366) (.cons (no_v701154138590) (.cons (no_v701154147102) (.cons (no_v701154122526) (.cons (no_v701154146526) (.cons (no_v701154121950) (.cons (no_v701154117342) (.cons (no_v701156614622) (.cons (no_v701156604126) (.cons (no_v701156746014) (.cons (no_v701156321054) (.cons (no_v701156352798) (.cons (no_v701156254494) (.cons (no_v701156236062) (.cons (no_v701166051806) (.cons (no_v701166183198) (.cons (no_v701203790046) (.cons (no_v701203931934) .nil))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
