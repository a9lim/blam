import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153660826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v701153660826 : ¬ MinimalInterpreter v701153660826 :=
  cost_cut false 2 (by decide)
private def v701153659882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v701153659882 : ¬ MinimalInterpreter v701153659882 :=
  cost_cut false 2 (by decide)
private def v701153605530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701153605530 : ¬ MinimalInterpreter v701153605530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153604586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v701153604586 : ¬ MinimalInterpreter v701153604586 :=
  cost_cut false 2 (by decide)
private def v701153590762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v701153590762 : ¬ MinimalInterpreter v701153590762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701156493210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156493210 : ¬ MinimalInterpreter v701156493210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156278762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)) (.var 0))))))
private theorem no_v701156278762 : ¬ MinimalInterpreter v701156278762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row204 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,3,0,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,3,0,0] = [v701153660826,v701153659882,v701153605530,v701153604586,v701153590762,v701156493210,v701156278762] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660826) (.cons (no_v701153659882) (.cons (no_v701153605530) (.cons (no_v701153604586) (.cons (no_v701153590762) (.cons (no_v701156493210) (.cons (no_v701156278762) .nil)))))))

private def v701153666670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v701153666670 : ¬ MinimalInterpreter v701153666670 :=
  cost_cut false 2 (by decide)
private def v701153666478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v701153666478 : ¬ MinimalInterpreter v701153666478 :=
  cost_cut false 2 (by decide)
private def v701153606254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v701153606254 : ¬ MinimalInterpreter v701153606254 :=
  cost_cut false 2 (by decide)
private def v701153606062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v701153606062 : ¬ MinimalInterpreter v701153606062 :=
  cost_cut false 2 (by decide)
private def v701153590958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v701153590958 : ¬ MinimalInterpreter v701153590958 :=
  cost_cut false 2 (by decide)
private def v701154433422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v701154433422 : ¬ MinimalInterpreter v701154433422 :=
  chain_cut false 2 (by decide)
private def v701154432654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v701154432654 : ¬ MinimalInterpreter v701154432654 :=
  chain_cut false 2 (by decide)
private def v701154191758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v701154191758 : ¬ MinimalInterpreter v701154191758 :=
  chain_cut false 2 (by decide)
private def v701154190990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.lam (.var 2))))))))
private theorem no_v701154190990 : ¬ MinimalInterpreter v701154190990 :=
  chain_cut false 2 (by decide)
private def v701154130574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v701154130574 : ¬ MinimalInterpreter v701154130574 :=
  chain_cut false 2 (by decide)
theorem row205 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [3,0,0,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [3,0,0,2] = [v701153666670,v701153666478,v701153606254,v701153606062,v701153590958,v701154433422,v701154432654,v701154191758,v701154190990,v701154130574] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153666670) (.cons (no_v701153666478) (.cons (no_v701153606254) (.cons (no_v701153606062) (.cons (no_v701153590958) (.cons (no_v701154433422) (.cons (no_v701154432654) (.cons (no_v701154191758) (.cons (no_v701154190990) (.cons (no_v701154130574) .nil))))))))))

private def v701153666678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v701153666678 : ¬ MinimalInterpreter v701153666678 :=
  cost_cut false 2 (by decide)
private def v701153666486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v701153666486 : ¬ MinimalInterpreter v701153666486 :=
  cost_cut false 2 (by decide)
private def v701153606262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v701153606262 : ¬ MinimalInterpreter v701153606262 :=
  cost_cut false 2 (by decide)
private def v701153606070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v701153606070 : ¬ MinimalInterpreter v701153606070 :=
  cost_cut false 2 (by decide)
private def v701153590966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v701153590966 : ¬ MinimalInterpreter v701153590966 :=
  cost_cut false 2 (by decide)
private def v701154433478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v701154433478 : ¬ MinimalInterpreter v701154433478 :=
  chain_cut false 2 (by decide)
private def v701154432710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v701154432710 : ¬ MinimalInterpreter v701154432710 :=
  chain_cut false 2 (by decide)
private def v701154432566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))))
private theorem no_v701154432566 : ¬ MinimalInterpreter v701154432566 :=
  chain_cut false 2 (by decide)
private def v701154191814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v701154191814 : ¬ MinimalInterpreter v701154191814 :=
  chain_cut false 2 (by decide)
private def v701154191046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.var 1))))))))
private theorem no_v701154191046 : ¬ MinimalInterpreter v701154191046 :=
  chain_cut false 2 (by decide)
private def v701154130630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v701154130630 : ¬ MinimalInterpreter v701154130630 :=
  chain_cut false 2 (by decide)
private def v701154190902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v701154190902 : ¬ MinimalInterpreter v701154190902 :=
  chain_cut false 2 (by decide)
private def v701154130486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v701154130486 : ¬ MinimalInterpreter v701154130486 :=
  chain_cut false 2 (by decide)
theorem row206 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [3,0,1,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [3,0,1,1] = [v701153666678,v701153666486,v701153606262,v701153606070,v701153590966,v701154433478,v701154432710,v701154432566,v701154191814,v701154191046,v701154130630,v701154190902,v701154130486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153666678) (.cons (no_v701153666486) (.cons (no_v701153606262) (.cons (no_v701153606070) (.cons (no_v701153590966) (.cons (no_v701154433478) (.cons (no_v701154432710) (.cons (no_v701154432566) (.cons (no_v701154191814) (.cons (no_v701154191046) (.cons (no_v701154130630) (.cons (no_v701154190902) (.cons (no_v701154130486) .nil)))))))))))))

private def v701153666682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v701153666682 : ¬ MinimalInterpreter v701153666682 :=
  cost_cut false 2 (by decide)
private def v701153666490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v701153666490 : ¬ MinimalInterpreter v701153666490 :=
  cost_cut false 2 (by decide)
private def v701153606266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v701153606266 : ¬ MinimalInterpreter v701153606266 :=
  cost_cut false 2 (by decide)
private def v701153606074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v701153606074 : ¬ MinimalInterpreter v701153606074 :=
  cost_cut false 2 (by decide)
private def v701153590970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v701153590970 : ¬ MinimalInterpreter v701153590970 :=
  cost_cut false 2 (by decide)
private def v701154432570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))))
private theorem no_v701154432570 : ¬ MinimalInterpreter v701154432570 :=
  chain_cut false 2 (by decide)
private def v701154190906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v701154190906 : ¬ MinimalInterpreter v701154190906 :=
  chain_cut false 2 (by decide)
private def v701154130490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v701154130490 : ¬ MinimalInterpreter v701154130490 :=
  chain_cut false 2 (by decide)
theorem row207 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [3,0,2,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [3,0,2,0] = [v701153666682,v701153666490,v701153606266,v701153606074,v701153590970,v701154432570,v701154190906,v701154130490] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153666682) (.cons (no_v701153666490) (.cons (no_v701153606266) (.cons (no_v701153606074) (.cons (no_v701153590970) (.cons (no_v701154432570) (.cons (no_v701154190906) (.cons (no_v701154130490) .nil))))))))

private def v701153666870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v701153666870 : ¬ MinimalInterpreter v701153666870 :=
  cost_cut false 2 (by decide)
private def v701153666518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v701153666518 : ¬ MinimalInterpreter v701153666518 :=
  cost_cut false 2 (by decide)
private def v701153606454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701153606454 : ¬ MinimalInterpreter v701153606454 :=
  cost_cut false 2 (by decide)
private def v701153606102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v701153606102 : ¬ MinimalInterpreter v701153606102 :=
  cost_cut false 2 (by decide)
private def v701153590998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v701153590998 : ¬ MinimalInterpreter v701153590998 :=
  cost_cut false 2 (by decide)
private def v701154434246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v701154434246 : ¬ MinimalInterpreter v701154434246 :=
  chain_cut false 2 (by decide)
private def v701154432838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v701154432838 : ¬ MinimalInterpreter v701154432838 :=
  chain_cut false 2 (by decide)
private def v701154192582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v701154192582 : ¬ MinimalInterpreter v701154192582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154190134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v701154190134 : ¬ MinimalInterpreter v701154190134 :=
  chain_cut false 2 (by decide)
private def v701154191174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
private theorem no_v701154191174 : ¬ MinimalInterpreter v701154191174 :=
  chain_cut false 2 (by decide)
private def v701154130758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v701154130758 : ¬ MinimalInterpreter v701154130758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154130134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v701154130134 : ¬ MinimalInterpreter v701154130134 :=
  chain_cut false 2 (by decide)
theorem row208 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [3,1,0,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [3,1,0,1] = [v701153666870,v701153666518,v701153606454,v701153606102,v701153590998,v701154434246,v701154432838,v701154192582,v701154190134,v701154191174,v701154130758,v701154130134] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153666870) (.cons (no_v701153666518) (.cons (no_v701153606454) (.cons (no_v701153606102) (.cons (no_v701153590998) (.cons (no_v701154434246) (.cons (no_v701154432838) (.cons (no_v701154192582) (.cons (no_v701154190134) (.cons (no_v701154191174) (.cons (no_v701154130758) (.cons (no_v701154130134) .nil))))))))))))

private def v701153666874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v701153666874 : ¬ MinimalInterpreter v701153666874 :=
  cost_cut false 2 (by decide)
private def v701153666522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v701153666522 : ¬ MinimalInterpreter v701153666522 :=
  cost_cut false 2 (by decide)
private def v701153606458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701153606458 : ¬ MinimalInterpreter v701153606458 :=
  cost_cut false 2 (by decide)
private def v701153606106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v701153606106 : ¬ MinimalInterpreter v701153606106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153591002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v701153591002 : ¬ MinimalInterpreter v701153591002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701154432794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
private theorem no_v701154432794 : ¬ MinimalInterpreter v701154432794 :=
  chain_cut false 2 (by decide)
private def v701154190138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v701154190138 : ¬ MinimalInterpreter v701154190138 :=
  chain_cut false 2 (by decide)
private def v701154191130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v701154191130 : ¬ MinimalInterpreter v701154191130 :=
  chain_cut false 2 (by decide)
private def v701154130714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v701154130714 : ¬ MinimalInterpreter v701154130714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154130138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v701154130138 : ¬ MinimalInterpreter v701154130138 :=
  chain_cut false 2 (by decide)
theorem row209 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [3,1,1,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [3,1,1,0] = [v701153666874,v701153666522,v701153606458,v701153606106,v701153591002,v701154432794,v701154190138,v701154191130,v701154130714,v701154130138] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153666874) (.cons (no_v701153666522) (.cons (no_v701153606458) (.cons (no_v701153606106) (.cons (no_v701153591002) (.cons (no_v701154432794) (.cons (no_v701154190138) (.cons (no_v701154191130) (.cons (no_v701154130714) (.cons (no_v701154130138) .nil))))))))))

end Blc.SelfintSingleObject.Rows39
