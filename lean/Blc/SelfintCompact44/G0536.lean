import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11712 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,3,1,1,0]
certRow g11712s0 on (rg11712 0) using bank tags []
certRow g11712s1 on (rg11712 1) using bank tags [28,28,28,28,28]
certRow g11712s2 on (rg11712 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11712s3 on (rg11712 3) using bank tags [3,3,3,3,3,28,28,28,28]
certRow g11712s4 on (rg11712 4) using bank tags [28,28,28,28,28,28,28,28,69,18]
certRow g11712s5 on (rg11712 5) using bank tags [28,28,28,28]
certRow g11712s6 on (rg11712 6) using bank tags [3,3,3,3,3,28]
certRow g11712s7 on (rg11712 7) using bank tags [20,20,20,1]
theorem g11712 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,3,1,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,3,1,1,0] (.cons (g11712s0) (.cons (g11712s1) (.cons (g11712s2) (.cons (g11712s3) (.cons (g11712s4) (.cons (g11712s5) (.cons (g11712s6) (.cons (g11712s7) .nil))))))))
certRow g11713 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,3,1,1,0]) using bank tags []
private abbrev rg11714 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,3,2,0,0]
certRow g11714s0 on (rg11714 0) using bank tags [3,3]
certRow g11714s1 on (rg11714 1) using bank tags [3,3,3,3,3,3,28]
certRow g11714s2 on (rg11714 2) using bank tags [3,3,3,3,3,3,3,1,1,28,28,11]
certRow g11714s3 on (rg11714 3) using bank tags [3,3,28]
certRow g11714s4 on (rg11714 4) using bank tags [3,3,3,3,28,28,28,28,28,28,1,57,28]
certRow g11714s5 on (rg11714 5) using bank tags [28,28]
certRow g11714s6 on (rg11714 6) using bank tags [1,57,57,57]
certRow g11714s7 on (rg11714 7) using bank tags [3,3,3,3,3,28,13,13,13,13,13,13,13]
theorem g11714 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,3,2,0,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,3,2,0,0] (.cons (g11714s0) (.cons (g11714s1) (.cons (g11714s2) (.cons (g11714s3) (.cons (g11714s4) (.cons (g11714s5) (.cons (g11714s6) (.cons (g11714s7) .nil))))))))
certRow g11715 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,3,2,0,0]) using bank tags []
certRow g11716 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,4,0,0,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11717 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,4,0,0,1]) using bank tags []
certRow g11718 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,4,0,1,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,11,11]
certRow g11719 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,4,0,1,0]) using bank tags []
certRow g11720 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,4,1,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,11]
certRow g11721 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,4,1,0,0]) using bank tags []
certRow g11722 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,5,0,0,0]) using bank tags []
certRow g11723 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,5,0,0,0]) using bank tags []
certRow g11724 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,0,0,4]) using bank tags [28,28,28,28,28,28,28,28,28]
end Blc.SelfintSingleObject.Compact44
