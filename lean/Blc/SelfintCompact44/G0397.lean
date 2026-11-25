import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg9207 (i : Nat) := Split43.five 12 i 7 6 6 true 5 3 4 [1,0,1,3]
certRow g9207s0 on (rg9207 0) using bank tags []
certRow g9207s1 on (rg9207 1) using bank tags [28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,13,59,1,28,28,28,0,59,1] except [Floor44.e1197491284766]
certRow g9207s2 on (rg9207 2) using bank tags [28,28,28,48,59,1]
certRow g9207s3 on (rg9207 3) using bank tags [28,28,28,48,59,1,28,28,28,48,59,1]
certRow g9207s4 on (rg9207 4) using bank tags [8,27,1,1,1,1,7,28,1,1,1,1,9,27,9,6,1,1,1,28,8,1,1,1]
certRow g9207s5 on (rg9207 5) using bank tags []
certRow g9207s6 on (rg9207 6) using bank tags []
certRow g9207s7 on (rg9207 7) using bank tags []
certRow g9207s8 on (rg9207 8) using bank tags []
certRow g9207s9 on (rg9207 9) using bank tags [28,28,28,27,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g9207s10 on (rg9207 10) using bank tags []
certRow g9207s11 on (rg9207 11) using bank tags [28,28,28,27,59,1,28,28,28,18,59,1]
theorem g9207 (hard : BadRow [Floor44.e1197491284766]) : BadRow (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,0,1,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 5 3 4 [1,0,1,3] (.cons (g9207s0) (.cons (g9207s1 (.cons (hard.get (by decide : Floor44.e1197491284766 ∈ [Floor44.e1197491284766])) .nil)) (.cons (g9207s2) (.cons (g9207s3) (.cons (g9207s4) (.cons (g9207s5) (.cons (g9207s6) (.cons (g9207s7) (.cons (g9207s8) (.cons (g9207s9) (.cons (g9207s10) (.cons (g9207s11) .nil))))))))))))
certRow g9208 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,0,2,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,19,19,29,29,19,19,29,29,29,29,29,11,29,29,29,6,29,29]
private abbrev rg9209 (i : Nat) := Split43.five 12 i 7 6 6 true 5 3 4 [1,0,2,2]
certRow g9209s0 on (rg9209 0) using bank tags []
certRow g9209s1 on (rg9209 1) using bank tags [3,3,3,21,4,1,3,3,3,1,4,1,28,28,28,18,59,1,28,28,28,11,59,1]
certRow g9209s2 on (rg9209 2) using bank tags [3,3,3,21,4,1,28,28,28,13,59,1,28,28,28,16,59,1]
certRow g9209s3 on (rg9209 3) using bank tags [3,3,3,1,4,1,3,3,3,1,4,1]
certRow g9209s4 on (rg9209 4) using bank tags [9,27,19,19,1,1,1,28,8,1,1,1,9,27,9,6,1,1,1,28,8,1,1,1]
certRow g9209s5 on (rg9209 5) using bank tags []
certRow g9209s6 on (rg9209 6) using bank tags []
certRow g9209s7 on (rg9209 7) using bank tags []
certRow g9209s8 on (rg9209 8) using bank tags []
certRow g9209s9 on (rg9209 9) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g9209s10 on (rg9209 10) using bank tags []
certRow g9209s11 on (rg9209 11) using bank tags [28,28,28,1,59,1]
theorem g9209 : BadRow (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,0,2,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 5 3 4 [1,0,2,2] (.cons (g9209s0) (.cons (g9209s1) (.cons (g9209s2) (.cons (g9209s3) (.cons (g9209s4) (.cons (g9209s5) (.cons (g9209s6) (.cons (g9209s7) (.cons (g9209s8) (.cons (g9209s9) (.cons (g9209s10) (.cons (g9209s11) .nil))))))))))))
certRow g9210 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,0,3,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,6,29,29,29,1,29,29,29,29,29,46,29,29,29,18,29,29]
end Blc.SelfintSingleObject.Compact44
