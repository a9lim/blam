import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11706 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,3,0,1,1]
certRow g11706s0 on (rg11706 0) using bank tags []
certRow g11706s1 on (rg11706 1) using bank tags [28]
certRow g11706s2 on (rg11706 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,16,18]
certRow g11706s3 on (rg11706 3) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g11706s4 on (rg11706 4) using bank tags [28,28,28,28,28,28,28,28,28,28,27,27]
certRow g11706s5 on (rg11706 5) using bank tags [28,28,28]
certRow g11706s6 on (rg11706 6) using bank tags [3,3,3,3,3]
certRow g11706s7 on (rg11706 7) using bank tags [28,28,20,20,20,20,20,11]
theorem g11706 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,3,0,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,3,0,1,1] (.cons (g11706s0) (.cons (g11706s1) (.cons (g11706s2) (.cons (g11706s3) (.cons (g11706s4) (.cons (g11706s5) (.cons (g11706s6) (.cons (g11706s7) .nil))))))))
certRow g11707 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,3,0,1,1]) using bank tags []
private abbrev rg11708 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,3,0,2,0]
certRow g11708s0 on (rg11708 0) using bank tags [3,3,3]
certRow g11708s1 on (rg11708 1) using bank tags [3,3,3,3,3,3,3,28,28,28,57]
certRow g11708s2 on (rg11708 2) using bank tags [3,3,3,3,3,3,3,3,3,1,15,28,28,28,28,57,57,11,11]
certRow g11708s3 on (rg11708 3) using bank tags [3,3,3,3,28,28,28]
certRow g11708s4 on (rg11708 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,1,1,28,28,6,18]
certRow g11708s5 on (rg11708 5) using bank tags [28,28,28,28]
certRow g11708s6 on (rg11708 6) using bank tags [28,57,6]
certRow g11708s7 on (rg11708 7) using bank tags [3,3,3,3,3,28,28,28,28,13,13,13,13,13,1,13,13,11,13,13,13,13]
theorem g11708 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,3,0,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,3,0,2,0] (.cons (g11708s0) (.cons (g11708s1) (.cons (g11708s2) (.cons (g11708s3) (.cons (g11708s4) (.cons (g11708s5) (.cons (g11708s6) (.cons (g11708s7) .nil))))))))
certRow g11709 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,3,0,2,0]) using bank tags []
private abbrev rg11710 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,3,1,0,1]
certRow g11710s0 on (rg11710 0) using bank tags []
certRow g11710s1 on (rg11710 1) using bank tags [28]
certRow g11710s2 on (rg11710 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,69]
certRow g11710s3 on (rg11710 3) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11710s4 on (rg11710 4) using bank tags [28,28,28,28,28,28,28,28,28,27]
certRow g11710s5 on (rg11710 5) using bank tags [28,28,28,28,28,28]
certRow g11710s6 on (rg11710 6) using bank tags [3,3,3,3,3,28]
certRow g11710s7 on (rg11710 7) using bank tags [28,28,20,20,20,20,20,1,11]
theorem g11710 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,3,1,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,3,1,0,1] (.cons (g11710s0) (.cons (g11710s1) (.cons (g11710s2) (.cons (g11710s3) (.cons (g11710s4) (.cons (g11710s5) (.cons (g11710s6) (.cons (g11710s7) .nil))))))))
certRow g11711 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,3,1,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
