import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14614 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,2,0,2,0]
certRow g14614s0 on (rg14614 0) using bank tags [30,1,6,207,6,6,6,28,28,28]
certRow g14614s1 on (rg14614 1) using bank tags [28,28,6,6,28,28,28,28,28,28]
certRow g14614s2 on (rg14614 2) using bank tags [28,28,28,28,28,6,6,28,28,28,28,28,1,1,1,1,1,1,1,1,1,1,19,19,29,0,29,0,19,19,19,19] except [Floor44.e4846434883706,Floor44.e4846434773114]
certRow g14614s3 on (rg14614 3) using bank tags [28,28]
certRow g14614s4 on (rg14614 4) using bank tags [28,28,1,1,28,28,28,28,28,28,28,28]
certRow g14614s5 on (rg14614 5) using bank tags [6,6,28,6,6,28]
certRow g14614s6 on (rg14614 6) using bank tags [35,35,35,22,28,28]
certRow g14614s7 on (rg14614 7) using bank tags [28,28,28,28,28,28,28,29,0,29,0] except [Floor44.e4846201004474,Floor44.e4846200954554]
theorem g14614 (hard : BadRow [Floor44.e4846434883706,Floor44.e4846434773114,Floor44.e4846201004474,Floor44.e4846200954554]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,2,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,2,0,2,0] (.cons (g14614s0) (.cons (g14614s1) (.cons (g14614s2 (.cons (hard.get (by decide : Floor44.e4846434883706 ∈ [Floor44.e4846434883706,Floor44.e4846434773114,Floor44.e4846201004474,Floor44.e4846200954554])) (.cons (hard.get (by decide : Floor44.e4846434773114 ∈ [Floor44.e4846434883706,Floor44.e4846434773114,Floor44.e4846201004474,Floor44.e4846200954554])) .nil))) (.cons (g14614s3) (.cons (g14614s4) (.cons (g14614s5) (.cons (g14614s6) (.cons (g14614s7 (.cons (hard.get (by decide : Floor44.e4846201004474 ∈ [Floor44.e4846434883706,Floor44.e4846434773114,Floor44.e4846201004474,Floor44.e4846200954554])) (.cons (hard.get (by decide : Floor44.e4846200954554 ∈ [Floor44.e4846434883706,Floor44.e4846434773114,Floor44.e4846201004474,Floor44.e4846200954554])) .nil))) .nil))))))))
certRow g14615 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,2,0,2,0]) using bank tags []
private abbrev rg14616 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,2,1,0,1]
certRow g14616s0 on (rg14616 0) using bank tags [1,1,6,6,18,28,28,28,28,28,35,6,22,6,19,6,22,6,19,6]
certRow g14616s1 on (rg14616 1) using bank tags [28,28,28,28]
certRow g14616s2 on (rg14616 2) using bank tags [28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,1,1,1,35,35,19,6,19,19,19,0,6,6,6,6,6,35,22,35,22,22,29,0,29,0] except [Floor44.e4846356822486,Floor44.e4846434884662,Floor44.e4846434771414]
certRow g14616s3 on (rg14616 3) using bank tags [28,28,28,28]
certRow g14616s4 on (rg14616 4) using bank tags [6,28,28,6,28,6,28,6,28,6,28,6,28]
certRow g14616s5 on (rg14616 5) using bank tags [28,19,29,0] except [Floor44.e4846201007158]
certRow g14616s6 on (rg14616 6) using bank tags [28,28,28,28,28,28,28,28,28,28,6,6,28,28,28,28,28,28,28,28,28,28,28,28,6,28,28]
certRow g14616s7 on (rg14616 7) using bank tags []
certRow g14616s8 on (rg14616 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14616s9 on (rg14616 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14616s10 on (rg14616 10) using bank tags [19,19,19,19,19,19,19,19,19,19,19,19,19,19]
certRow g14616s11 on (rg14616 11) using bank tags [28,28,1,1,1,1,1,1,28,28,6,1,1,28]
theorem g14616 (hard : BadRow [Floor44.e4846356822486,Floor44.e4846434884662,Floor44.e4846434771414,Floor44.e4846201007158]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,2,1,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,2,1,0,1] (.cons (g14616s0) (.cons (g14616s1) (.cons (g14616s2 (.cons (hard.get (by decide : Floor44.e4846356822486 ∈ [Floor44.e4846356822486,Floor44.e4846434884662,Floor44.e4846434771414,Floor44.e4846201007158])) (.cons (hard.get (by decide : Floor44.e4846434884662 ∈ [Floor44.e4846356822486,Floor44.e4846434884662,Floor44.e4846434771414,Floor44.e4846201007158])) (.cons (hard.get (by decide : Floor44.e4846434771414 ∈ [Floor44.e4846356822486,Floor44.e4846434884662,Floor44.e4846434771414,Floor44.e4846201007158])) .nil)))) (.cons (g14616s3) (.cons (g14616s4) (.cons (g14616s5 (.cons (hard.get (by decide : Floor44.e4846201007158 ∈ [Floor44.e4846356822486,Floor44.e4846434884662,Floor44.e4846434771414,Floor44.e4846201007158])) .nil)) (.cons (g14616s6) (.cons (g14616s7) (.cons (g14616s8) (.cons (g14616s9) (.cons (g14616s10) (.cons (g14616s11) .nil))))))))))))
certRow g14617 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,2,1,0,1]) using bank tags [1,1,1,57,57,57,1,1,1,57,57,57,1,1,1]
end Blc.SelfintSingleObject.Compact44
