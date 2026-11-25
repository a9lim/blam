import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11490 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,4,1,1]
certRow g11490s0 on (rg11490 0) using bank tags [28]
certRow g11490s1 on (rg11490 1) using bank tags [28]
certRow g11490s2 on (rg11490 2) using bank tags [28,28,28,28,28,28]
certRow g11490s3 on (rg11490 3) using bank tags [28,28]
certRow g11490s4 on (rg11490 4) using bank tags [28,28,28,1,1]
certRow g11490s5 on (rg11490 5) using bank tags [28,28,28,28,28,28]
certRow g11490s6 on (rg11490 6) using bank tags []
certRow g11490s7 on (rg11490 7) using bank tags [28,28,28,28,28,28,28,1]
theorem g11490 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,4,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,4,1,1] (.cons (g11490s0) (.cons (g11490s1) (.cons (g11490s2) (.cons (g11490s3) (.cons (g11490s4) (.cons (g11490s5) (.cons (g11490s6) (.cons (g11490s7) .nil))))))))
certRow g11491 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,4,1,1]) using bank tags []
private abbrev rg11492 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,4,2,0]
certRow g11492s0 on (rg11492 0) using bank tags [28]
certRow g11492s1 on (rg11492 1) using bank tags [28]
certRow g11492s2 on (rg11492 2) using bank tags [28,28,28,28,28]
certRow g11492s3 on (rg11492 3) using bank tags [28,28,28,28,28]
certRow g11492s4 on (rg11492 4) using bank tags [28,28,28,28,28]
certRow g11492s5 on (rg11492 5) using bank tags [28,28]
certRow g11492s6 on (rg11492 6) using bank tags [28,28,28,28]
certRow g11492s7 on (rg11492 7) using bank tags [28,28,28,28,28,28,13,13,45]
theorem g11492 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,4,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,4,2,0] (.cons (g11492s0) (.cons (g11492s1) (.cons (g11492s2) (.cons (g11492s3) (.cons (g11492s4) (.cons (g11492s5) (.cons (g11492s6) (.cons (g11492s7) .nil))))))))
certRow g11493 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,4,2,0]) using bank tags []
certRow g11494 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,5,0,1]) using bank tags []
certRow g11495 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,5,0,1]) using bank tags []
certRow g11496 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,5,1,0]) using bank tags []
certRow g11497 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,5,1,0]) using bank tags []
certRow g11498 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,6,0,0]) using bank tags []
certRow g11499 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,6,0,0]) using bank tags []
certRow g11500 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,0,0,5]) using bank tags []
certRow g11501 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,0,0,5]) using bank tags []
end Blc.SelfintSingleObject.Compact44
