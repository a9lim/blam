import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14704 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,0,0,2,1]
certRow g14704s0 on (rg14704 0) using bank tags [28,28,28,28,28]
certRow g14704s1 on (rg14704 1) using bank tags []
certRow g14704s2 on (rg14704 2) using bank tags [6,6,1,1,28,28,28,28,28,28,1,1,1,1,1,28]
certRow g14704s3 on (rg14704 3) using bank tags []
certRow g14704s4 on (rg14704 4) using bank tags [1,28,28,28,1,28,28,28,28,1,28,28,28,13,13,13,6]
certRow g14704s5 on (rg14704 5) using bank tags []
certRow g14704s6 on (rg14704 6) using bank tags [28,1,28,1,28,28,28,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g14704s7 on (rg14704 7) using bank tags []
certRow g14704s8 on (rg14704 8) using bank tags [13,13,13,13,13,13,13,13,13,35,6,19,35,19,22,19,22,35,19,22,19,22,19,0,6,6,6,6,6,28,28,19,1,28,28,0,0] except [Floor44.e4845195674998,Floor44.e4845917703030,Floor44.e4845894634358]
certRow g14704s9 on (rg14704 9) using bank tags [1,28,28,1,1,28,28,1,28,28,28,28,1,28,1,28,28,28]
certRow g14704s10 on (rg14704 10) using bank tags [1,1,19,1,13,13]
certRow g14704s11 on (rg14704 11) using bank tags [1,28,28]
theorem g14704 (hard : BadRow [Floor44.e4845195674998,Floor44.e4845917703030,Floor44.e4845894634358]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,0,0,2,1] (.cons (g14704s0) (.cons (g14704s1) (.cons (g14704s2) (.cons (g14704s3) (.cons (g14704s4) (.cons (g14704s5) (.cons (g14704s6) (.cons (g14704s7) (.cons (g14704s8 (.cons (hard.get (by decide : Floor44.e4845195674998 ∈ [Floor44.e4845195674998,Floor44.e4845917703030,Floor44.e4845894634358])) (.cons (hard.get (by decide : Floor44.e4845917703030 ∈ [Floor44.e4845195674998,Floor44.e4845917703030,Floor44.e4845894634358])) (.cons (hard.get (by decide : Floor44.e4845894634358 ∈ [Floor44.e4845195674998,Floor44.e4845917703030,Floor44.e4845894634358])) .nil)))) (.cons (g14704s9) (.cons (g14704s10) (.cons (g14704s11) .nil))))))))))))
certRow g14705 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,0,2,1]) using bank tags []
private abbrev rg14706 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [1,0,0,0,3,0]
certRow g14706s0 on (rg14706 0) using bank tags []
certRow g14706s1 on (rg14706 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14706s2 on (rg14706 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14706s3 on (rg14706 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14706s4 on (rg14706 4) using bank tags []
certRow g14706s5 on (rg14706 5) using bank tags [28,28,28,28,28,28]
certRow g14706s6 on (rg14706 6) using bank tags []
certRow g14706s7 on (rg14706 7) using bank tags [28,28,28,28,28]
theorem g14706 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,0,3,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [1,0,0,0,3,0] (.cons (g14706s0) (.cons (g14706s1) (.cons (g14706s2) (.cons (g14706s3) (.cons (g14706s4) (.cons (g14706s5) (.cons (g14706s6) (.cons (g14706s7) .nil))))))))
certRow g14707 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
