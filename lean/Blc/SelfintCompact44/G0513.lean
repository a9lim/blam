import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11551 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,0,4,0]) using bank tags []
private abbrev rg11552 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,2,1,0,3]
certRow g11552s0 on (rg11552 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,57,57,6,57,6]
certRow g11552s1 on (rg11552 1) using bank tags [3,3,3,3,3,3,3,1,1]
certRow g11552s2 on (rg11552 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow g11552s3 on (rg11552 3) using bank tags [3,3,3,3,3,3,3,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow g11552s4 on (rg11552 4) using bank tags [3,3,3,3,3]
certRow g11552s5 on (rg11552 5) using bank tags [3,28,28,28,28,28,6]
certRow g11552s6 on (rg11552 6) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow g11552s7 on (rg11552 7) using bank tags [28,28,3,3,28,28]
certRow g11552s8 on (rg11552 8) using bank tags [28,28,28,28,28,28]
certRow g11552s9 on (rg11552 9) using bank tags [28,28]
certRow g11552s10 on (rg11552 10) using bank tags [28,28,28,28]
certRow g11552s11 on (rg11552 11) using bank tags [3,3,3,3,3,1,1,1,1,11,11,11,24,6,16,6,6,1,32,18,24,6,6]
theorem g11552 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,1,0,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,2,1,0,3] (.cons (g11552s0) (.cons (g11552s1) (.cons (g11552s2) (.cons (g11552s3) (.cons (g11552s4) (.cons (g11552s5) (.cons (g11552s6) (.cons (g11552s7) (.cons (g11552s8) (.cons (g11552s9) (.cons (g11552s10) (.cons (g11552s11) .nil))))))))))))
certRow g11553 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,1,0,3]) using bank tags []
private abbrev rg11554 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,1,1,2]
certRow g11554s0 on (rg11554 0) using bank tags [28]
certRow g11554s1 on (rg11554 1) using bank tags [28,28,28]
certRow g11554s2 on (rg11554 2) using bank tags [28,28,28,28,57,6]
certRow g11554s3 on (rg11554 3) using bank tags []
certRow g11554s4 on (rg11554 4) using bank tags [28]
certRow g11554s5 on (rg11554 5) using bank tags [28,28,6,1,28,28,28,57,57,57,6,57,6,28,28,57,6]
certRow g11554s6 on (rg11554 6) using bank tags []
certRow g11554s7 on (rg11554 7) using bank tags [28,28,28,13,13,13,1,13,11,11,11,11,6,6,69]
theorem g11554 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,1,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,1,1,2] (.cons (g11554s0) (.cons (g11554s1) (.cons (g11554s2) (.cons (g11554s3) (.cons (g11554s4) (.cons (g11554s5) (.cons (g11554s6) (.cons (g11554s7) .nil))))))))
certRow g11555 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,1,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
