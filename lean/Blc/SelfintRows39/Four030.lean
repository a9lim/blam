import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153647038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 4))))))))))
private theorem no_v701153647038 : ¬ MinimalInterpreter v701153647038 :=
  chain_cut false 2 (by decide)
private def v701153646270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 4)))))))))
private theorem no_v701153646270 : ¬ MinimalInterpreter v701153646270 :=
  chain_cut false 2 (by decide)
private def v701153601982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 4)))))))))
private theorem no_v701153601982 : ¬ MinimalInterpreter v701153601982 :=
  chain_cut false 2 (by decide)
private def v701153601214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 4))))))))
private theorem no_v701153601214 : ¬ MinimalInterpreter v701153601214 :=
  chain_cut false 2 (by decide)
private def v701153589950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 4))))))))
private theorem no_v701153589950 : ¬ MinimalInterpreter v701153589950 :=
  chain_cut false 2 (by decide)
private def v701154354750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v701154354750 : ¬ MinimalInterpreter v701154354750 :=
  chain_cut false 2 (by decide)
private def v701154351678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v701154351678 : ¬ MinimalInterpreter v701154351678 :=
  chain_cut false 2 (by decide)
private def v701154174526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 4)))))))))
private theorem no_v701154174526 : ¬ MinimalInterpreter v701154174526 :=
  chain_cut false 2 (by decide)
private def v701154171454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 4))))))))
private theorem no_v701154171454 : ¬ MinimalInterpreter v701154171454 :=
  chain_cut false 2 (by decide)
private def v701154126398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 4))))))))
private theorem no_v701154126398 : ¬ MinimalInterpreter v701154126398 :=
  chain_cut false 2 (by decide)
private def v701157185598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 4))))))))))
private theorem no_v701157185598 : ¬ MinimalInterpreter v701157185598 :=
  chain_cut false 2 (by decide)
private def v701157173310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))))))
private theorem no_v701157173310 : ¬ MinimalInterpreter v701157173310 :=
  chain_cut false 2 (by decide)
private def v701156464702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.lam (.var 4)))))))))
private theorem no_v701156464702 : ¬ MinimalInterpreter v701156464702 :=
  chain_cut false 2 (by decide)
private def v701156452414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 4))))))))
private theorem no_v701156452414 : ¬ MinimalInterpreter v701156452414 :=
  chain_cut false 2 (by decide)
private def v701156272190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 4))))))))
private theorem no_v701156272190 : ¬ MinimalInterpreter v701156272190 :=
  chain_cut false 2 (by decide)
theorem row180 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,0,4]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,0,4] = [v701153647038,v701153646270,v701153601982,v701153601214,v701153589950,v701154354750,v701154351678,v701154174526,v701154171454,v701154126398,v701157185598,v701157173310,v701156464702,v701156452414,v701156272190] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153647038) (.cons (no_v701153646270) (.cons (no_v701153601982) (.cons (no_v701153601214) (.cons (no_v701153589950) (.cons (no_v701154354750) (.cons (no_v701154351678) (.cons (no_v701154174526) (.cons (no_v701154171454) (.cons (no_v701154126398) (.cons (no_v701157185598) (.cons (no_v701157173310) (.cons (no_v701156464702) (.cons (no_v701156452414) (.cons (no_v701156272190) .nil)))))))))))))))

private def v701153647070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v701153647070 : ¬ MinimalInterpreter v701153647070 :=
  cost_cut false 2 (by decide)
private def v701153646302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v701153646302 : ¬ MinimalInterpreter v701153646302 :=
  cost_cut false 2 (by decide)
private def v701153602014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 3)))))))))
private theorem no_v701153602014 : ¬ MinimalInterpreter v701153602014 :=
  cost_cut false 2 (by decide)
private def v701153601246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 3))))))))
private theorem no_v701153601246 : ¬ MinimalInterpreter v701153601246 :=
  cost_cut false 2 (by decide)
private def v701153589982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 3))))))))
private theorem no_v701153589982 : ¬ MinimalInterpreter v701153589982 :=
  cost_cut false 2 (by decide)
private def v701154353630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 3))))))))))
private theorem no_v701154353630 : ¬ MinimalInterpreter v701154353630 :=
  cost_cut false 2 (by decide)
private def v701154354974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v701154354974 : ¬ MinimalInterpreter v701154354974 :=
  cost_cut false 2 (by decide)
private def v701154351902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v701154351902 : ¬ MinimalInterpreter v701154351902 :=
  cost_cut false 2 (by decide)
private def v701154351326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 3))))))))
private theorem no_v701154351326 : ¬ MinimalInterpreter v701154351326 :=
  chain_cut false 2 (by decide)
private def v701154173406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v701154173406 : ¬ MinimalInterpreter v701154173406 :=
  cost_cut false 2 (by decide)
private def v701154174750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v701154174750 : ¬ MinimalInterpreter v701154174750 :=
  cost_cut false 2 (by decide)
private def v701154171678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3))))))))
private theorem no_v701154171678 : ¬ MinimalInterpreter v701154171678 :=
  cost_cut false 2 (by decide)
private def v701154126622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v701154126622 : ¬ MinimalInterpreter v701154126622 :=
  cost_cut false 2 (by decide)
private def v701154171102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 3)))))))
private theorem no_v701154171102 : ¬ MinimalInterpreter v701154171102 :=
  chain_cut false 2 (by decide)
private def v701154126046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 3)))))))
private theorem no_v701154126046 : ¬ MinimalInterpreter v701154126046 :=
  chain_cut false 2 (by decide)
private def v701157087710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v701157087710 : ¬ MinimalInterpreter v701157087710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))
private def v701157086942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v701157086942 : ¬ MinimalInterpreter v701157086942 :=
  cost_cut false 2 (by decide)
private def v701157107486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v701157107486 : ¬ MinimalInterpreter v701157107486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701157104414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v701157104414 : ¬ MinimalInterpreter v701157104414 :=
  cost_cut false 2 (by decide)
private def v701157171998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 3))))))))
private theorem no_v701157171998 : ¬ MinimalInterpreter v701157171998 :=
  chain_cut false 2 (by decide)
private def v701156451102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 3)))))))
private theorem no_v701156451102 : ¬ MinimalInterpreter v701156451102 :=
  chain_cut false 2 (by decide)
private def v701156270878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.var 3)))))))
private theorem no_v701156270878 : ¬ MinimalInterpreter v701156270878 :=
  chain_cut false 2 (by decide)
theorem row181 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,1,3]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,1,3] = [v701153647070,v701153646302,v701153602014,v701153601246,v701153589982,v701154353630,v701154354974,v701154351902,v701154351326,v701154173406,v701154174750,v701154171678,v701154126622,v701154171102,v701154126046,v701157087710,v701157086942,v701157107486,v701157104414,v701157171998,v701156451102,v701156270878] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153647070) (.cons (no_v701153646302) (.cons (no_v701153602014) (.cons (no_v701153601246) (.cons (no_v701153589982) (.cons (no_v701154353630) (.cons (no_v701154354974) (.cons (no_v701154351902) (.cons (no_v701154351326) (.cons (no_v701154173406) (.cons (no_v701154174750) (.cons (no_v701154171678) (.cons (no_v701154126622) (.cons (no_v701154171102) (.cons (no_v701154126046) (.cons (no_v701157087710) (.cons (no_v701157086942) (.cons (no_v701157107486) (.cons (no_v701157104414) (.cons (no_v701157171998) (.cons (no_v701156451102) (.cons (no_v701156270878) .nil))))))))))))))))))))))

private def v701153647086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2))))))))))
private theorem no_v701153647086 : ¬ MinimalInterpreter v701153647086 :=
  cost_cut false 2 (by decide)
private def v701153646318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2)))))))))
private theorem no_v701153646318 : ¬ MinimalInterpreter v701153646318 :=
  cost_cut false 2 (by decide)
private def v701153602030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2)))))))))
private theorem no_v701153602030 : ¬ MinimalInterpreter v701153602030 :=
  cost_cut false 2 (by decide)
private def v701153601262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2))))))))
private theorem no_v701153601262 : ¬ MinimalInterpreter v701153601262 :=
  cost_cut false 2 (by decide)
private def v701153589998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2))))))))
private theorem no_v701153589998 : ¬ MinimalInterpreter v701153589998 :=
  cost_cut false 2 (by decide)
private def v701154355086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v701154355086 : ¬ MinimalInterpreter v701154355086 :=
  cost_cut false 2 (by decide)
private def v701154352014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v701154352014 : ¬ MinimalInterpreter v701154352014 :=
  cost_cut false 2 (by decide)
private def v701154351342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v701154351342 : ¬ MinimalInterpreter v701154351342 :=
  cost_cut false 2 (by decide)
private def v701154174862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v701154174862 : ¬ MinimalInterpreter v701154174862 :=
  cost_cut false 2 (by decide)
private def v701154171790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 2))))))))
private theorem no_v701154171790 : ¬ MinimalInterpreter v701154171790 :=
  cost_cut false 2 (by decide)
private def v701154126734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v701154126734 : ¬ MinimalInterpreter v701154126734 :=
  cost_cut false 2 (by decide)
private def v701154171118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v701154171118 : ¬ MinimalInterpreter v701154171118 :=
  cost_cut false 2 (by decide)
private def v701154126062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v701154126062 : ¬ MinimalInterpreter v701154126062 :=
  cost_cut false 2 (by decide)
private def v701157107598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v701157107598 : ¬ MinimalInterpreter v701157107598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701157104526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v701157104526 : ¬ MinimalInterpreter v701157104526 :=
  cost_cut false 2 (by decide)
private def v701157103854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v701157103854 : ¬ MinimalInterpreter v701157103854 :=
  cost_cut false 2 (by decide)
private def v701157187086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 2))))))))))
private theorem no_v701157187086 : ¬ MinimalInterpreter v701157187086 :=
  chain_cut false 2 (by decide)
private def v701157174798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 2)))))))))
private theorem no_v701157174798 : ¬ MinimalInterpreter v701157174798 :=
  chain_cut false 2 (by decide)
private def v701157171438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 2)))))))
private theorem no_v701157171438 : ¬ MinimalInterpreter v701157171438 :=
  chain_cut false 2 (by decide)
private def v701156466190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.var 2)))))))))
private theorem no_v701156466190 : ¬ MinimalInterpreter v701156466190 :=
  chain_cut false 2 (by decide)
private def v701156453902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.var 2))))))))
private theorem no_v701156453902 : ¬ MinimalInterpreter v701156453902 :=
  chain_cut false 2 (by decide)
private def v701156273678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.var 2))))))))
private theorem no_v701156273678 : ¬ MinimalInterpreter v701156273678 :=
  chain_cut false 2 (by decide)
private def v701156450542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 2))))))
private theorem no_v701156450542 : ¬ MinimalInterpreter v701156450542 :=
  chain_cut false 2 (by decide)
private def v701156270318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2)))) (.var 2))))))
private theorem no_v701156270318 : ¬ MinimalInterpreter v701156270318 :=
  chain_cut false 2 (by decide)
theorem row182 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,2,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,2,2] = [v701153647086,v701153646318,v701153602030,v701153601262,v701153589998,v701154355086,v701154352014,v701154351342,v701154174862,v701154171790,v701154126734,v701154171118,v701154126062,v701157107598,v701157104526,v701157103854,v701157187086,v701157174798,v701157171438,v701156466190,v701156453902,v701156273678,v701156450542,v701156270318] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153647086) (.cons (no_v701153646318) (.cons (no_v701153602030) (.cons (no_v701153601262) (.cons (no_v701153589998) (.cons (no_v701154355086) (.cons (no_v701154352014) (.cons (no_v701154351342) (.cons (no_v701154174862) (.cons (no_v701154171790) (.cons (no_v701154126734) (.cons (no_v701154171118) (.cons (no_v701154126062) (.cons (no_v701157107598) (.cons (no_v701157104526) (.cons (no_v701157103854) (.cons (no_v701157187086) (.cons (no_v701157174798) (.cons (no_v701157171438) (.cons (no_v701156466190) (.cons (no_v701156453902) (.cons (no_v701156273678) (.cons (no_v701156450542) (.cons (no_v701156270318) .nil))))))))))))))))))))))))

private def v701153647094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v701153647094 : ¬ MinimalInterpreter v701153647094 :=
  cost_cut false 2 (by decide)
private def v701153646326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v701153646326 : ¬ MinimalInterpreter v701153646326 :=
  cost_cut false 2 (by decide)
private def v701153602038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 1)))))))))
private theorem no_v701153602038 : ¬ MinimalInterpreter v701153602038 :=
  cost_cut false 2 (by decide)
private def v701153601270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 1))))))))
private theorem no_v701153601270 : ¬ MinimalInterpreter v701153601270 :=
  cost_cut false 2 (by decide)
private def v701153590006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 1))))))))
private theorem no_v701153590006 : ¬ MinimalInterpreter v701153590006 :=
  cost_cut false 2 (by decide)
private def v701154353654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 1))))))))))
private theorem no_v701154353654 : ¬ MinimalInterpreter v701154353654 :=
  cost_cut false 2 (by decide)
private def v701154355142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v701154355142 : ¬ MinimalInterpreter v701154355142 :=
  chain_cut false 2 (by decide)
private def v701154352070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v701154352070 : ¬ MinimalInterpreter v701154352070 :=
  chain_cut false 2 (by decide)
private def v701154351350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v701154351350 : ¬ MinimalInterpreter v701154351350 :=
  cost_cut false 2 (by decide)
private def v701154173430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v701154173430 : ¬ MinimalInterpreter v701154173430 :=
  cost_cut false 2 (by decide)
private def v701154174918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.lam (.var 1)))))))))
private theorem no_v701154174918 : ¬ MinimalInterpreter v701154174918 :=
  chain_cut false 2 (by decide)
private def v701154171846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.var 1))))))))
private theorem no_v701154171846 : ¬ MinimalInterpreter v701154171846 :=
  chain_cut false 2 (by decide)
private def v701154126790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.lam (.var 1))))))))
private theorem no_v701154126790 : ¬ MinimalInterpreter v701154126790 :=
  chain_cut false 2 (by decide)
private def v701154171126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v701154171126 : ¬ MinimalInterpreter v701154171126 :=
  cost_cut false 2 (by decide)
private def v701154126070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v701154126070 : ¬ MinimalInterpreter v701154126070 :=
  cost_cut false 2 (by decide)
private def v701157087734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v701157087734 : ¬ MinimalInterpreter v701157087734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))
private def v701157086966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v701157086966 : ¬ MinimalInterpreter v701157086966 :=
  cost_cut false 2 (by decide)
private def v701157103862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v701157103862 : ¬ MinimalInterpreter v701157103862 :=
  cost_cut false 2 (by decide)
private def v701157172166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 1))))))))
private theorem no_v701157172166 : ¬ MinimalInterpreter v701157172166 :=
  chain_cut false 2 (by decide)
private def v701156451270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.lam (.var 1)))))))
private theorem no_v701156451270 : ¬ MinimalInterpreter v701156451270 :=
  chain_cut false 2 (by decide)
private def v701156271046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.lam (.var 1)))))))
private theorem no_v701156271046 : ¬ MinimalInterpreter v701156271046 :=
  chain_cut false 2 (by decide)
theorem row183 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,3,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,3,1] = [v701153647094,v701153646326,v701153602038,v701153601270,v701153590006,v701154353654,v701154355142,v701154352070,v701154351350,v701154173430,v701154174918,v701154171846,v701154126790,v701154171126,v701154126070,v701157087734,v701157086966,v701157103862,v701157172166,v701156451270,v701156271046] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153647094) (.cons (no_v701153646326) (.cons (no_v701153602038) (.cons (no_v701153601270) (.cons (no_v701153590006) (.cons (no_v701154353654) (.cons (no_v701154355142) (.cons (no_v701154352070) (.cons (no_v701154351350) (.cons (no_v701154173430) (.cons (no_v701154174918) (.cons (no_v701154171846) (.cons (no_v701154126790) (.cons (no_v701154171126) (.cons (no_v701154126070) (.cons (no_v701157087734) (.cons (no_v701157086966) (.cons (no_v701157103862) (.cons (no_v701157172166) (.cons (no_v701156451270) (.cons (no_v701156271046) .nil)))))))))))))))))))))

private def v701153647098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 4) (.var 0))))))))))
private theorem no_v701153647098 : ¬ MinimalInterpreter v701153647098 :=
  chain_cut false 2 (by decide)
private def v701153646330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 4)) (.var 0)))))))))
private theorem no_v701153646330 : ¬ MinimalInterpreter v701153646330 :=
  chain_cut false 2 (by decide)
private def v701153602042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 4) (.var 0)))))))))
private theorem no_v701153602042 : ¬ MinimalInterpreter v701153602042 :=
  chain_cut false 2 (by decide)
private def v701153601274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 4))) (.var 0))))))))
private theorem no_v701153601274 : ¬ MinimalInterpreter v701153601274 :=
  chain_cut false 2 (by decide)
private def v701153590010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 4)) (.var 0))))))))
private theorem no_v701153590010 : ¬ MinimalInterpreter v701153590010 :=
  chain_cut false 2 (by decide)
private def v701154351354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))))
private theorem no_v701154351354 : ¬ MinimalInterpreter v701154351354 :=
  chain_cut false 2 (by decide)
private def v701154171130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.var 0)))))))
private theorem no_v701154171130 : ¬ MinimalInterpreter v701154171130 :=
  chain_cut false 2 (by decide)
private def v701154126074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.var 0)))))))
private theorem no_v701154126074 : ¬ MinimalInterpreter v701154126074 :=
  chain_cut false 2 (by decide)
private def v701157171450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0)))))))
private theorem no_v701157171450 : ¬ MinimalInterpreter v701157171450 :=
  chain_cut false 2 (by decide)
private def v701156450554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 4))))) (.var 0))))))
private theorem no_v701156450554 : ¬ MinimalInterpreter v701156450554 :=
  chain_cut false 2 (by decide)
private def v701156270330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 4)))) (.var 0))))))
private theorem no_v701156270330 : ¬ MinimalInterpreter v701156270330 :=
  chain_cut false 2 (by decide)
theorem row184 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,4,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,0,4,0] = [v701153647098,v701153646330,v701153602042,v701153601274,v701153590010,v701154351354,v701154171130,v701154126074,v701157171450,v701156450554,v701156270330] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153647098) (.cons (no_v701153646330) (.cons (no_v701153602042) (.cons (no_v701153601274) (.cons (no_v701153590010) (.cons (no_v701154351354) (.cons (no_v701154171130) (.cons (no_v701154126074) (.cons (no_v701157171450) (.cons (no_v701156450554) (.cons (no_v701156270330) .nil)))))))))))

private def v701153647838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v701153647838 : ¬ MinimalInterpreter v701153647838 :=
  cost_cut false 2 (by decide)
private def v701153646430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v701153646430 : ¬ MinimalInterpreter v701153646430 :=
  cost_cut false 2 (by decide)
private def v701153602782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3)))))))))
private theorem no_v701153602782 : ¬ MinimalInterpreter v701153602782 :=
  cost_cut false 2 (by decide)
private def v701153601374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 3))))))))
private theorem no_v701153601374 : ¬ MinimalInterpreter v701153601374 :=
  cost_cut false 2 (by decide)
private def v701153590110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 3))))))))
private theorem no_v701153590110 : ¬ MinimalInterpreter v701153590110 :=
  cost_cut false 2 (by decide)
private def v701154358046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v701154358046 : ¬ MinimalInterpreter v701154358046 :=
  cost_cut false 2 (by decide)
private def v701154352414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v701154352414 : ¬ MinimalInterpreter v701154352414 :=
  cost_cut false 2 (by decide)
private def v701154177822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v701154177822 : ¬ MinimalInterpreter v701154177822 :=
  cost_cut false 2 (by decide)
private def v701154168030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 3))))))))
private theorem no_v701154168030 : ¬ MinimalInterpreter v701154168030 :=
  chain_cut false 2 (by decide)
private def v701154172190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3))))))))
private theorem no_v701154172190 : ¬ MinimalInterpreter v701154172190 :=
  cost_cut false 2 (by decide)
private def v701154127134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v701154127134 : ¬ MinimalInterpreter v701154127134 :=
  cost_cut false 2 (by decide)
private def v701154124638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 3)))))))
private theorem no_v701154124638 : ¬ MinimalInterpreter v701154124638 :=
  chain_cut false 2 (by decide)
private def v701157088478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v701157088478 : ¬ MinimalInterpreter v701157088478 :=
  cost_cut false 2 (by decide)
private def v701157087070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v701157087070 : ¬ MinimalInterpreter v701157087070 :=
  cost_cut false 2 (by decide)
private def v701157110558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v701157110558 : ¬ MinimalInterpreter v701157110558 :=
  cost_cut false 2 (by decide)
private def v701157104926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v701157104926 : ¬ MinimalInterpreter v701157104926 :=
  cost_cut false 2 (by decide)
private def v701156438814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v701156438814 : ¬ MinimalInterpreter v701156438814 :=
  chain_cut false 2 (by decide)
private def v701156265246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.var 3)))))))
private theorem no_v701156265246 : ¬ MinimalInterpreter v701156265246 :=
  chain_cut false 2 (by decide)
theorem row185 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,0,3]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,1,0,3] = [v701153647838,v701153646430,v701153602782,v701153601374,v701153590110,v701154358046,v701154352414,v701154177822,v701154168030,v701154172190,v701154127134,v701154124638,v701157088478,v701157087070,v701157110558,v701157104926,v701156438814,v701156265246] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153647838) (.cons (no_v701153646430) (.cons (no_v701153602782) (.cons (no_v701153601374) (.cons (no_v701153590110) (.cons (no_v701154358046) (.cons (no_v701154352414) (.cons (no_v701154177822) (.cons (no_v701154168030) (.cons (no_v701154172190) (.cons (no_v701154127134) (.cons (no_v701154124638) (.cons (no_v701157088478) (.cons (no_v701157087070) (.cons (no_v701157110558) (.cons (no_v701157104926) (.cons (no_v701156438814) (.cons (no_v701156265246) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
