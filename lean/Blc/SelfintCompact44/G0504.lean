import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11502 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,0,1,4]
certRow g11502s0 on (rg11502 0) using bank tags [28,28]
certRow g11502s1 on (rg11502 1) using bank tags []
certRow g11502s2 on (rg11502 2) using bank tags [28,28,28,28,28,28,28,28]
certRow g11502s3 on (rg11502 3) using bank tags [28,28]
certRow g11502s4 on (rg11502 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11502s5 on (rg11502 5) using bank tags [28,28,28,28,28,28]
certRow g11502s6 on (rg11502 6) using bank tags [28,28]
certRow g11502s7 on (rg11502 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,14,1,1,1,13,13,13,13,6,6,6,6,6,6,6]
theorem g11502 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,0,1,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,0,1,4] (.cons (g11502s0) (.cons (g11502s1) (.cons (g11502s2) (.cons (g11502s3) (.cons (g11502s4) (.cons (g11502s5) (.cons (g11502s6) (.cons (g11502s7) .nil))))))))
certRow g11503 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,0,1,4]) using bank tags []
private abbrev rg11504 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,1,0,2,3]
certRow g11504s0 on (rg11504 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,1,28,1,1]
certRow g11504s1 on (rg11504 1) using bank tags [3,3,3,3,3,3,3]
certRow g11504s2 on (rg11504 2) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11504s3 on (rg11504 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,1]
certRow g11504s4 on (rg11504 4) using bank tags [3,3,3,3,3]
certRow g11504s5 on (rg11504 5) using bank tags [3,3,28]
certRow g11504s6 on (rg11504 6) using bank tags [3,3,3,3,3,3,28,28]
certRow g11504s7 on (rg11504 7) using bank tags [28,28,28,28]
certRow g11504s8 on (rg11504 8) using bank tags [28]
certRow g11504s9 on (rg11504 9) using bank tags [28,14,28,14]
certRow g11504s10 on (rg11504 10) using bank tags [3,3,28,28,28,28,28]
certRow g11504s11 on (rg11504 11) using bank tags [3,3,3,3,3,28,1,13,13,26,1,13,26,1,1,24,6,1,6,22]
theorem g11504 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,0,2,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,1,0,2,3] (.cons (g11504s0) (.cons (g11504s1) (.cons (g11504s2) (.cons (g11504s3) (.cons (g11504s4) (.cons (g11504s5) (.cons (g11504s6) (.cons (g11504s7) (.cons (g11504s8) (.cons (g11504s9) (.cons (g11504s10) (.cons (g11504s11) .nil))))))))))))
certRow g11505 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,0,2,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
