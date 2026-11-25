import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13987 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,2,1,1,0]) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,35,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1]
certRow g13988 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,2,2,0,0]) using bank tags []
certRow g13989 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,2,2,0,0]) using bank tags []
certRow g13990 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,3,0,0,1]) using bank tags []
certRow g13991 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,3,0,0,1]) using bank tags []
certRow g13992 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,3,0,1,0]) using bank tags []
certRow g13993 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,3,0,1,0]) using bank tags []
certRow g13994 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,3,1,0,0]) using bank tags []
certRow g13995 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,3,1,0,0]) using bank tags []
certRow g13996 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,4,0,0,0]) using bank tags []
certRow g13997 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,4,0,0,0]) using bank tags []
certRow g13998 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,0,0,3]) using bank tags []
certRow g13999 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,0,0,3]) using bank tags []
private abbrev rg14000 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,0,0,1,2]
certRow g14000s0 on (rg14000 0) using bank tags []
certRow g14000s1 on (rg14000 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14000s2 on (rg14000 2) using bank tags [28,28,28,17,28,28,28,6]
certRow g14000s3 on (rg14000 3) using bank tags [28,28,28,22,28,28,28,55]
certRow g14000s4 on (rg14000 4) using bank tags [28,28,28,13,28,28,28,13,28,28,28,6,28,28,28,0,28,28,28,6] except [Floor44.e4778689416558]
certRow g14000s5 on (rg14000 5) using bank tags []
certRow g14000s6 on (rg14000 6) using bank tags [6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,19,19,29,13,19,19,29,27,6,29,29,55,29,6,29,6]
certRow g14000s7 on (rg14000 7) using bank tags []
certRow g14000s8 on (rg14000 8) using bank tags []
certRow g14000s9 on (rg14000 9) using bank tags []
certRow g14000s10 on (rg14000 10) using bank tags [22,29,29,13,29,22,29,6]
certRow g14000s11 on (rg14000 11) using bank tags []
theorem g14000 (hard : BadRow [Floor44.e4778689416558]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,0,0,1,2] (.cons (g14000s0) (.cons (g14000s1) (.cons (g14000s2) (.cons (g14000s3) (.cons (g14000s4 (.cons (hard.get (by decide : Floor44.e4778689416558 ∈ [Floor44.e4778689416558])) .nil)) (.cons (g14000s5) (.cons (g14000s6) (.cons (g14000s7) (.cons (g14000s8) (.cons (g14000s9) (.cons (g14000s10) (.cons (g14000s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
