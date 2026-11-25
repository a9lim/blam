import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11628 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,1,2,2]
certRow g11628s0 on (rg11628 0) using bank tags [3]
certRow g11628s1 on (rg11628 1) using bank tags [28]
certRow g11628s2 on (rg11628 2) using bank tags [3,3,3,1,28,1,1,1,1,27]
certRow g11628s3 on (rg11628 3) using bank tags [3,3]
certRow g11628s4 on (rg11628 4) using bank tags [3,3,3,28]
certRow g11628s5 on (rg11628 5) using bank tags [1,28,28,28,1,28,28,28,1,1,1]
certRow g11628s6 on (rg11628 6) using bank tags []
certRow g11628s7 on (rg11628 7) using bank tags [1,1,1,1,15,1,13,26,1]
theorem g11628 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,1,2,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,1,2,2] (.cons (g11628s0) (.cons (g11628s1) (.cons (g11628s2) (.cons (g11628s3) (.cons (g11628s4) (.cons (g11628s5) (.cons (g11628s6) (.cons (g11628s7) .nil))))))))
certRow g11629 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,1,2,2]) using bank tags []
private abbrev rg11630 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,1,3,1]
certRow g11630s0 on (rg11630 0) using bank tags [28,28,28]
certRow g11630s1 on (rg11630 1) using bank tags [28,28,27]
certRow g11630s2 on (rg11630 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,46]
certRow g11630s3 on (rg11630 3) using bank tags [3,3,3,3,3,3,3]
certRow g11630s4 on (rg11630 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,27,27]
certRow g11630s5 on (rg11630 5) using bank tags [28,28,28,28,28]
certRow g11630s6 on (rg11630 6) using bank tags [3,3,3,3,3,28,28,28]
certRow g11630s7 on (rg11630 7) using bank tags [28,28,20,20,20,13,13,13,15,1,16,31,28,15,28,27]
theorem g11630 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,1,3,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,1,3,1] (.cons (g11630s0) (.cons (g11630s1) (.cons (g11630s2) (.cons (g11630s3) (.cons (g11630s4) (.cons (g11630s5) (.cons (g11630s6) (.cons (g11630s7) .nil))))))))
certRow g11631 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,1,3,1]) using bank tags []
private abbrev rg11632 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,1,4,0]
certRow g11632s0 on (rg11632 0) using bank tags [28,28]
certRow g11632s1 on (rg11632 1) using bank tags [28,28]
certRow g11632s2 on (rg11632 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11632s3 on (rg11632 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11632s4 on (rg11632 4) using bank tags [28,28,28,28,28,28,28,28,11,6]
certRow g11632s5 on (rg11632 5) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g11632s6 on (rg11632 6) using bank tags [28,28,28,28,28,28,28]
certRow g11632s7 on (rg11632 7) using bank tags [28,28,1,16,6,6,27]
theorem g11632 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,1,4,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,1,4,0] (.cons (g11632s0) (.cons (g11632s1) (.cons (g11632s2) (.cons (g11632s3) (.cons (g11632s4) (.cons (g11632s5) (.cons (g11632s6) (.cons (g11632s7) .nil))))))))
certRow g11633 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,1,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
