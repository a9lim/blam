import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14554 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [3,0,1,0,0]) using bank tags []
certRow g14555 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [3,0,1,0,0]) using bank tags []
certRow g14556 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [3,1,0,0,0]) using bank tags []
certRow g14557 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [3,1,0,0,0]) using bank tags []
certRow g14558 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [4,0,0,0,0]) using bank tags []
certRow g14559 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [4,0,0,0,0]) using bank tags []
certRow g14560 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,0,0,4]) using bank tags []
certRow g14561 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,0,0,4]) using bank tags []
private abbrev rg14562 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,0,1,3]
certRow g14562s0 on (rg14562 0) using bank tags [28,28]
certRow g14562s1 on (rg14562 1) using bank tags []
certRow g14562s2 on (rg14562 2) using bank tags [28,28,28,28,28,6,6,6,19,0,19,29,0,19,19] except [Floor44.e4846360467166,Floor44.e4846435964638]
certRow g14562s3 on (rg14562 3) using bank tags []
certRow g14562s4 on (rg14562 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14562s5 on (rg14562 5) using bank tags []
certRow g14562s6 on (rg14562 6) using bank tags []
certRow g14562s7 on (rg14562 7) using bank tags []
theorem g14562 (hard : BadRow [Floor44.e4846360467166,Floor44.e4846435964638]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,0,1,3]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,0,1,3] (.cons (g14562s0) (.cons (g14562s1) (.cons (g14562s2 (.cons (hard.get (by decide : Floor44.e4846360467166 ∈ [Floor44.e4846360467166,Floor44.e4846435964638])) (.cons (hard.get (by decide : Floor44.e4846435964638 ∈ [Floor44.e4846360467166,Floor44.e4846435964638])) .nil))) (.cons (g14562s3) (.cons (g14562s4) (.cons (g14562s5) (.cons (g14562s6) (.cons (g14562s7) .nil))))))))
certRow g14563 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,0,1,3]) using bank tags []
private abbrev rg14564 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,0,2,2]
certRow g14564s0 on (rg14564 0) using bank tags []
certRow g14564s1 on (rg14564 1) using bank tags [28,6,6,28,28]
certRow g14564s2 on (rg14564 2) using bank tags [6,6,6,6,6,6,22,28,28,6,6,28,28,28,28,1,1,1,1,1,19,29,0,19,19] except [Floor44.e4846434748142]
certRow g14564s3 on (rg14564 3) using bank tags [28]
certRow g14564s4 on (rg14564 4) using bank tags [28,1,1,28,28,28]
certRow g14564s5 on (rg14564 5) using bank tags []
certRow g14564s6 on (rg14564 6) using bank tags []
certRow g14564s7 on (rg14564 7) using bank tags []
theorem g14564 (hard : BadRow [Floor44.e4846434748142]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,0,2,2]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,0,2,2] (.cons (g14564s0) (.cons (g14564s1) (.cons (g14564s2 (.cons (hard.get (by decide : Floor44.e4846434748142 ∈ [Floor44.e4846434748142])) .nil)) (.cons (g14564s3) (.cons (g14564s4) (.cons (g14564s5) (.cons (g14564s6) (.cons (g14564s7) .nil))))))))
certRow g14565 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,0,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
