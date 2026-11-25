import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11619 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,0,3,2]) using bank tags []
private abbrev rg11620 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,0,4,1]
certRow g11620s0 on (rg11620 0) using bank tags [28,28]
certRow g11620s1 on (rg11620 1) using bank tags []
certRow g11620s2 on (rg11620 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11620s3 on (rg11620 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g11620s4 on (rg11620 4) using bank tags [28,28,28,28,28,28,28,28]
certRow g11620s5 on (rg11620 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11620s6 on (rg11620 6) using bank tags [28,28,28,28,28,28,28]
certRow g11620s7 on (rg11620 7) using bank tags [1,6,24,16,6,6,27,27]
theorem g11620 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,0,4,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,0,4,1] (.cons (g11620s0) (.cons (g11620s1) (.cons (g11620s2) (.cons (g11620s3) (.cons (g11620s4) (.cons (g11620s5) (.cons (g11620s6) (.cons (g11620s7) .nil))))))))
certRow g11621 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,0,4,1]) using bank tags []
certRow g11622 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,0,5,0]) using bank tags []
certRow g11623 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,0,5,0]) using bank tags []
private abbrev rg11624 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,1,0,4]
certRow g11624s0 on (rg11624 0) using bank tags [28,28,28,28]
certRow g11624s1 on (rg11624 1) using bank tags []
certRow g11624s2 on (rg11624 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11624s3 on (rg11624 3) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11624s4 on (rg11624 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11624s5 on (rg11624 5) using bank tags [28,28,28,28,28,28,28,28]
certRow g11624s6 on (rg11624 6) using bank tags [28,28,28,28,28,28,28]
certRow g11624s7 on (rg11624 7) using bank tags [28,28,1,6,6,6,6,6,6,6,6,27,27,27,27]
theorem g11624 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,1,0,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,1,0,4] (.cons (g11624s0) (.cons (g11624s1) (.cons (g11624s2) (.cons (g11624s3) (.cons (g11624s4) (.cons (g11624s5) (.cons (g11624s6) (.cons (g11624s7) .nil))))))))
certRow g11625 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,1,0,4]) using bank tags []
private abbrev rg11626 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,1,1,3]
certRow g11626s0 on (rg11626 0) using bank tags [28]
certRow g11626s1 on (rg11626 1) using bank tags [28,28,28,27]
certRow g11626s2 on (rg11626 2) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g11626s3 on (rg11626 3) using bank tags [3,3,3,3,3]
certRow g11626s4 on (rg11626 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11626s5 on (rg11626 5) using bank tags [28]
certRow g11626s6 on (rg11626 6) using bank tags [3,3,3,3,3,28,28,28]
certRow g11626s7 on (rg11626 7) using bank tags [20,20,20,13,13,15,1,1,16,28,6,28,27]
theorem g11626 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,1,1,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,1,1,3] (.cons (g11626s0) (.cons (g11626s1) (.cons (g11626s2) (.cons (g11626s3) (.cons (g11626s4) (.cons (g11626s5) (.cons (g11626s6) (.cons (g11626s7) .nil))))))))
certRow g11627 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,1,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
