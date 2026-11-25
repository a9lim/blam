import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11530 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,1,3,0,2]
certRow g11530s0 on (rg11530 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11530s1 on (rg11530 1) using bank tags [3,3,3,3,3,3,3,28,28,28,57,1,28,57,1,1,28]
certRow g11530s2 on (rg11530 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11530s3 on (rg11530 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,15]
certRow g11530s4 on (rg11530 4) using bank tags [3,3,3,3,3]
certRow g11530s5 on (rg11530 5) using bank tags [3,3,28,28,28,28,28]
certRow g11530s6 on (rg11530 6) using bank tags [3,3,3,3,3,3,3,28,28,28,28,1]
certRow g11530s7 on (rg11530 7) using bank tags [28,28,28,28]
certRow g11530s8 on (rg11530 8) using bank tags [28,28]
certRow g11530s9 on (rg11530 9) using bank tags [28,28,28,28]
certRow g11530s10 on (rg11530 10) using bank tags [3,3,3,3,22,28]
certRow g11530s11 on (rg11530 11) using bank tags [3,3,3,3,3,28,28,1,15,13,13,6,1,24,24,6,19,15,1,24,6,19,6,45]
theorem g11530 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,3,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,1,3,0,2] (.cons (g11530s0) (.cons (g11530s1) (.cons (g11530s2) (.cons (g11530s3) (.cons (g11530s4) (.cons (g11530s5) (.cons (g11530s6) (.cons (g11530s7) (.cons (g11530s8) (.cons (g11530s9) (.cons (g11530s10) (.cons (g11530s11) .nil))))))))))))
certRow g11531 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,3,0,2]) using bank tags []
private abbrev rg11532 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,3,1,1]
certRow g11532s0 on (rg11532 0) using bank tags []
certRow g11532s1 on (rg11532 1) using bank tags [28,28]
certRow g11532s2 on (rg11532 2) using bank tags [28,28,28,28,28,28]
certRow g11532s3 on (rg11532 3) using bank tags []
certRow g11532s4 on (rg11532 4) using bank tags [28,28,28,28,1]
certRow g11532s5 on (rg11532 5) using bank tags [28,28,28,28,28,28,28,28]
certRow g11532s6 on (rg11532 6) using bank tags []
certRow g11532s7 on (rg11532 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,1,15,1,1,13,13,13,6,18,16,6,18,16]
theorem g11532 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,3,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,3,1,1] (.cons (g11532s0) (.cons (g11532s1) (.cons (g11532s2) (.cons (g11532s3) (.cons (g11532s4) (.cons (g11532s5) (.cons (g11532s6) (.cons (g11532s7) .nil))))))))
certRow g11533 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,3,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
