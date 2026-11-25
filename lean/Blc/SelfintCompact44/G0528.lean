import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11658 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,0,2,2]
certRow g11658s0 on (rg11658 0) using bank tags [3]
certRow g11658s1 on (rg11658 1) using bank tags [28]
certRow g11658s2 on (rg11658 2) using bank tags [3,3,3,28,28,1,1,1,27,27]
certRow g11658s3 on (rg11658 3) using bank tags [3,3]
certRow g11658s4 on (rg11658 4) using bank tags [3,3,3,3,3,28]
certRow g11658s5 on (rg11658 5) using bank tags [28,28,28,28,28,28,28,28,28,1,28,1,1,1]
certRow g11658s6 on (rg11658 6) using bank tags []
certRow g11658s7 on (rg11658 7) using bank tags [6,6,1,1,1,1,1,1,1,1,11,11,11,1,11,28,28,1,1,13,13,19,19]
theorem g11658 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,0,2,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,0,2,2] (.cons (g11658s0) (.cons (g11658s1) (.cons (g11658s2) (.cons (g11658s3) (.cons (g11658s4) (.cons (g11658s5) (.cons (g11658s6) (.cons (g11658s7) .nil))))))))
certRow g11659 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,0,2,2]) using bank tags []
private abbrev rg11660 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,0,3,1]
certRow g11660s0 on (rg11660 0) using bank tags [28,28,28]
certRow g11660s1 on (rg11660 1) using bank tags [28,28,28,27]
certRow g11660s2 on (rg11660 2) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,16,45]
certRow g11660s3 on (rg11660 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g11660s4 on (rg11660 4) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,27,27,27,27]
certRow g11660s5 on (rg11660 5) using bank tags [3,3,28,28,28,28]
certRow g11660s6 on (rg11660 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11660s7 on (rg11660 7) using bank tags [28,28,20,20,20,20,20,13,1,13,11,11,28,28,30,32,1,13,13,19,19]
theorem g11660 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,0,3,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,0,3,1] (.cons (g11660s0) (.cons (g11660s1) (.cons (g11660s2) (.cons (g11660s3) (.cons (g11660s4) (.cons (g11660s5) (.cons (g11660s6) (.cons (g11660s7) .nil))))))))
certRow g11661 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,0,3,1]) using bank tags []
private abbrev rg11662 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,0,4,0]
certRow g11662s0 on (rg11662 0) using bank tags [28,28]
certRow g11662s1 on (rg11662 1) using bank tags [28,28]
certRow g11662s2 on (rg11662 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11662s3 on (rg11662 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g11662s4 on (rg11662 4) using bank tags [28,28,28,28,28,28,28,28,11,11,6,6]
certRow g11662s5 on (rg11662 5) using bank tags [28,28,28,28,28]
certRow g11662s6 on (rg11662 6) using bank tags [28,28,28,28,28]
certRow g11662s7 on (rg11662 7) using bank tags [28,28,1,1,26,1]
theorem g11662 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,0,4,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,0,4,0] (.cons (g11662s0) (.cons (g11662s1) (.cons (g11662s2) (.cons (g11662s3) (.cons (g11662s4) (.cons (g11662s5) (.cons (g11662s6) (.cons (g11662s7) .nil))))))))
certRow g11663 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,0,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
