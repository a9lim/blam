import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14708 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,0,1,0,2]
certRow g14708s0 on (rg14708 0) using bank tags [28,28,28,28,28]
certRow g14708s1 on (rg14708 1) using bank tags [28,28]
certRow g14708s2 on (rg14708 2) using bank tags [1,1,1,1,1,1,28,28,28,28,28,28,1,1,1,1,1,1,1,1,1,28,28]
certRow g14708s3 on (rg14708 3) using bank tags []
certRow g14708s4 on (rg14708 4) using bank tags [1,1,28,28,28,28,1,28,28,28,13,13,13,13,13,6,6]
certRow g14708s5 on (rg14708 5) using bank tags []
certRow g14708s6 on (rg14708 6) using bank tags [1,1,1,1,1,1,1,28,28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,1,28,28,28,28,28,28,28,28,1,1,28,28,28,28,1,28,28,28]
certRow g14708s7 on (rg14708 7) using bank tags []
certRow g14708s8 on (rg14708 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,35,19,19,19,19,35,19,19,19,6,6,6,6,22,6,22,6,6,19,6,6,19,6,6,6,6,6,6,6,6,6,6,28,28,28,28,6,1,6,1,28,28,28,28,0,0,0,0] except [Floor44.e4845917703790,Floor44.e4845894635118,Floor44.e4845917703086,Floor44.e4845894634414]
certRow g14708s9 on (rg14708 9) using bank tags [28,28,28,28,28,1,1,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28]
certRow g14708s10 on (rg14708 10) using bank tags [1,1,19,1,13,13,1,1,19,1,13,13]
certRow g14708s11 on (rg14708 11) using bank tags [28,28,28,28]
theorem g14708 (hard : BadRow [Floor44.e4845917703790,Floor44.e4845894635118,Floor44.e4845917703086,Floor44.e4845894634414]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,0,1,0,2] (.cons (g14708s0) (.cons (g14708s1) (.cons (g14708s2) (.cons (g14708s3) (.cons (g14708s4) (.cons (g14708s5) (.cons (g14708s6) (.cons (g14708s7) (.cons (g14708s8 (.cons (hard.get (by decide : Floor44.e4845917703790 ∈ [Floor44.e4845917703790,Floor44.e4845894635118,Floor44.e4845917703086,Floor44.e4845894634414])) (.cons (hard.get (by decide : Floor44.e4845894635118 ∈ [Floor44.e4845917703790,Floor44.e4845894635118,Floor44.e4845917703086,Floor44.e4845894634414])) (.cons (hard.get (by decide : Floor44.e4845917703086 ∈ [Floor44.e4845917703790,Floor44.e4845894635118,Floor44.e4845917703086,Floor44.e4845894634414])) (.cons (hard.get (by decide : Floor44.e4845894634414 ∈ [Floor44.e4845917703790,Floor44.e4845894635118,Floor44.e4845917703086,Floor44.e4845894634414])) .nil))))) (.cons (g14708s9) (.cons (g14708s10) (.cons (g14708s11) .nil))))))))))))
certRow g14709 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,1,0,2]) using bank tags []
certRow g14710 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,1,1,1]) using bank tags []
certRow g14711 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,1,1,1]) using bank tags []
private abbrev rg14712 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,0,1,2,0]
certRow g14712s0 on (rg14712 0) using bank tags [28,28,28,28,28]
certRow g14712s1 on (rg14712 1) using bank tags [28,28,28,28]
certRow g14712s2 on (rg14712 2) using bank tags [1,1,1,1,28,28,28,28,28,28,1,1,1,1,55,1,28]
certRow g14712s3 on (rg14712 3) using bank tags [28,28,28,28,28]
certRow g14712s4 on (rg14712 4) using bank tags [1,1,28,28,28,28,1,28,28,28,13,13,13,6]
certRow g14712s5 on (rg14712 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14712s6 on (rg14712 6) using bank tags [28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28]
certRow g14712s7 on (rg14712 7) using bank tags []
certRow g14712s8 on (rg14712 8) using bank tags [13,13,13,13,13,13,13,13,13,35,19,19,35,19,19,6,6,6,6,6,19,6,6,6,19,22,6,6,6,6,6,6,28,28,6,1,1,28,28,28,0,0] except [Floor44.e4845917703802,Floor44.e4845894635130]
certRow g14712s9 on (rg14712 9) using bank tags [28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28,28,1,28,28,28,6,6,19,1,1]
certRow g14712s10 on (rg14712 10) using bank tags [1,1,19,1,13,13]
certRow g14712s11 on (rg14712 11) using bank tags [28,28,28,28,28,23,23,23,19,6,28,28,6]
theorem g14712 (hard : BadRow [Floor44.e4845917703802,Floor44.e4845894635130]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,0,1,2,0] (.cons (g14712s0) (.cons (g14712s1) (.cons (g14712s2) (.cons (g14712s3) (.cons (g14712s4) (.cons (g14712s5) (.cons (g14712s6) (.cons (g14712s7) (.cons (g14712s8 (.cons (hard.get (by decide : Floor44.e4845917703802 ∈ [Floor44.e4845917703802,Floor44.e4845894635130])) (.cons (hard.get (by decide : Floor44.e4845894635130 ∈ [Floor44.e4845917703802,Floor44.e4845894635130])) .nil))) (.cons (g14712s9) (.cons (g14712s10) (.cons (g14712s11) .nil))))))))))))
certRow g14713 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,1,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
