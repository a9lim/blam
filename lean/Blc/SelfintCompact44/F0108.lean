import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f568 on (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [3,1,0,0,0]) using bank tags [27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27]
certRow f569 on (Grammar43.fourRow ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,0,1,3]) using bank tags [14,14,14,14,14,14,14,14,6,35,14,14,14,14,1,1,22,1,6,6,48,48,48,48,1,1,1,0,1,22,14,14,14,14,1,1,1,1,6,22,1,1,1,22,6,6,6,6,6,6] except [Floor44.e4786339994398]
certRow f570 on (Grammar43.fourRow ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,0,2,2]) using bank tags [14,14,14,14,14,14,14,14,70,6,22,6,22,6,6,22,1,1,86,22,1,1,1,1,1,1,85,6,22,22,1,1,1,1,1,1,1,1,70,6,22,6,6,6,6,0,6,6,86,6] except [Floor44.e4770232625390]
certRow f571 on (Grammar43.fourRow ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,0,3,1]) using bank tags [14,14,14,14,14,14,14,14,6,35,14,14,14,14,22,22,6,1,6,22,48,48,48,48,1,1,1,0,1,22,14,14,14,14,1,1,1,1,6,22,1,1,1,22,35,6,6,6,6,6] except [Floor44.e4786339993846]
private abbrev rf572 (i : Nat) := Split43.four 12 i ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,1,0,3]
certRow f572s0 on (rf572 0) using bank tags []
certRow f572s1 on (rf572 1) using bank tags [14,14,14,14,14,14,1,1,48,48,1,1,14,14,1,1,15,49,6,6]
certRow f572s2 on (rf572 2) using bank tags [14,14,48,14,1]
certRow f572s3 on (rf572 3) using bank tags [14,14,14,14,48,48,14,14,1,1]
certRow f572s4 on (rf572 4) using bank tags [14,14,26,30,0,0,26,30,30,6] except [Floor44.e4786340000542,Floor44.e4786339994910]
certRow f572s5 on (rf572 5) using bank tags [14,14,14,14,48,48,14,14,26,47]
certRow f572s6 on (rf572 6) using bank tags []
certRow f572s7 on (rf572 7) using bank tags []
certRow f572s8 on (rf572 8) using bank tags []
certRow f572s9 on (rf572 9) using bank tags [14,14,15,26,1,47,15,32,32,31]
certRow f572s10 on (rf572 10) using bank tags [6,6,121,35,6,6,84,22,6,6,22,22,6,6,102,22,6,62,22,69]
certRow f572s11 on (rf572 11) using bank tags [14,1,1,1,6]
theorem f572 (hard : BadRow [Floor44.e4786340000542,Floor44.e4786339994910]) : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,1,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,1,0,3] (.cons (f572s0) (.cons (f572s1) (.cons (f572s2) (.cons (f572s3) (.cons (f572s4 (.cons (hard.get (by decide : Floor44.e4786340000542 ∈ [Floor44.e4786340000542,Floor44.e4786339994910])) (.cons (hard.get (by decide : Floor44.e4786339994910 ∈ [Floor44.e4786340000542,Floor44.e4786339994910])) .nil))) (.cons (f572s5) (.cons (f572s6) (.cons (f572s7) (.cons (f572s8) (.cons (f572s9) (.cons (f572s10) (.cons (f572s11) .nil))))))))))))
certRow f573 on (Grammar43.fourRow ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,1,1,2]) using bank tags [3,3,3,14,14,14,14,14,22,3,3,3,26,1,1,22,30,22,21,21,21,30,1,1,1,85,22,27,27,27,26,1,1,1,1,22,1,1,1,31,6,22,6,6,22]
certRow f574 on (Grammar43.fourRow ⟨0,4,0,3,4,4⟩ [0,0,0,0] [0,1,2,1]) using bank tags [3,3,3,25,15,14,14,25,22,3,3,3,49,26,1,6,47,22,21,21,21,32,30,1,1,0,22,27,27,27,15,1,1,1,32,84,1,1,1,71,6,6,22,6,67] except [Floor44.e4786340000710]
end Blc.SelfintSingleObject.Compact44
