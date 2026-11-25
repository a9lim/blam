import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14690 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,3,0,0,0,1]
certRow g14690s0 on (rg14690 0) using bank tags [28,28,28,28,28,28,28,28]
certRow g14690s1 on (rg14690 1) using bank tags []
certRow g14690s2 on (rg14690 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14690s3 on (rg14690 3) using bank tags []
certRow g14690s4 on (rg14690 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14690s5 on (rg14690 5) using bank tags []
certRow g14690s6 on (rg14690 6) using bank tags [28,28,28,28,28,28]
certRow g14690s7 on (rg14690 7) using bank tags []
theorem g14690 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,3,0,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,3,0,0,0,1] (.cons (g14690s0) (.cons (g14690s1) (.cons (g14690s2) (.cons (g14690s3) (.cons (g14690s4) (.cons (g14690s5) (.cons (g14690s6) (.cons (g14690s7) .nil))))))))
certRow g14691 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,3,0,0,0,1]) using bank tags []
private abbrev rg14692 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,3,0,0,1,0]
certRow g14692s0 on (rg14692 0) using bank tags [28,28,28,28,28,28,28,28]
certRow g14692s1 on (rg14692 1) using bank tags []
certRow g14692s2 on (rg14692 2) using bank tags [28,28,28,28]
certRow g14692s3 on (rg14692 3) using bank tags []
certRow g14692s4 on (rg14692 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14692s5 on (rg14692 5) using bank tags []
certRow g14692s6 on (rg14692 6) using bank tags [28,28,28,28,28,28]
certRow g14692s7 on (rg14692 7) using bank tags [28,28,28,28,28]
theorem g14692 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,3,0,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,3,0,0,1,0] (.cons (g14692s0) (.cons (g14692s1) (.cons (g14692s2) (.cons (g14692s3) (.cons (g14692s4) (.cons (g14692s5) (.cons (g14692s6) (.cons (g14692s7) .nil))))))))
certRow g14693 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,3,0,0,1,0]) using bank tags []
private abbrev rg14694 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,3,0,1,0,0]
certRow g14694s0 on (rg14694 0) using bank tags [28]
certRow g14694s1 on (rg14694 1) using bank tags [28,28]
certRow g14694s2 on (rg14694 2) using bank tags [28,28]
certRow g14694s3 on (rg14694 3) using bank tags []
certRow g14694s4 on (rg14694 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14694s5 on (rg14694 5) using bank tags []
certRow g14694s6 on (rg14694 6) using bank tags [28,28,28,28,28,28]
certRow g14694s7 on (rg14694 7) using bank tags [28,28,28,28,28,28,28]
theorem g14694 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,3,0,1,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,3,0,1,0,0] (.cons (g14694s0) (.cons (g14694s1) (.cons (g14694s2) (.cons (g14694s3) (.cons (g14694s4) (.cons (g14694s5) (.cons (g14694s6) (.cons (g14694s7) .nil))))))))
certRow g14695 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,3,0,1,0,0]) using bank tags []
certRow g14696 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,3,1,0,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14697 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,3,1,0,0,0]) using bank tags []
certRow g14698 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,4,0,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
