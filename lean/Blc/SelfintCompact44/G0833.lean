import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14790 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,1,0,0,0,1]
certRow g14790s0 on (rg14790 0) using bank tags []
certRow g14790s1 on (rg14790 1) using bank tags [25,25,28,28,28]
certRow g14790s2 on (rg14790 2) using bank tags [28,28,28,28,28,28]
certRow g14790s3 on (rg14790 3) using bank tags [28,28,28]
certRow g14790s4 on (rg14790 4) using bank tags [1,1,1,28,28,28,9,28,28,28,28,28,28]
certRow g14790s5 on (rg14790 5) using bank tags []
certRow g14790s6 on (rg14790 6) using bank tags [1,1,1,1,1,1,28,28,28,1,28,28,28,28,1,28,28,28,7,28,28,28,9,28,23,28,28,28,28,28,28,28,28,28,9,9,23,28,28,28,9,28,28,28,28,28,28]
certRow g14790s7 on (rg14790 7) using bank tags []
certRow g14790s8 on (rg14790 8) using bank tags []
certRow g14790s9 on (rg14790 9) using bank tags [1,1,1,1,1,1,1,28,28,28,28,1,28,28,28,1,1,28,28,28,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g14790s10 on (rg14790 10) using bank tags []
certRow g14790s11 on (rg14790 11) using bank tags [28,28,1,28,28,28]
theorem g14790 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,1,0,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,1,0,0,0,1] (.cons (g14790s0) (.cons (g14790s1) (.cons (g14790s2) (.cons (g14790s3) (.cons (g14790s4) (.cons (g14790s5) (.cons (g14790s6) (.cons (g14790s7) (.cons (g14790s8) (.cons (g14790s9) (.cons (g14790s10) (.cons (g14790s11) .nil))))))))))))
certRow g14791 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,1,0,0,0,1]) using bank tags []
private abbrev rg14792 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,1,0,0,1,0]
certRow g14792s0 on (rg14792 0) using bank tags []
certRow g14792s1 on (rg14792 1) using bank tags [25,25,28,28,28,28,28]
certRow g14792s2 on (rg14792 2) using bank tags [28,28,28,28,28,28]
certRow g14792s3 on (rg14792 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g14792s4 on (rg14792 4) using bank tags [1,1,1,28,28,28,9,28,28,28,28,28,28]
certRow g14792s5 on (rg14792 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14792s6 on (rg14792 6) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,23,23,28,28,28,28,28,28,28,28,28]
certRow g14792s7 on (rg14792 7) using bank tags []
certRow g14792s8 on (rg14792 8) using bank tags []
certRow g14792s9 on (rg14792 9) using bank tags [1,1,1,1,1,1,1,28,28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,1,28,28,28,28,28,28,28,28,1,1,28,28,28,28,1,28,28,28]
certRow g14792s10 on (rg14792 10) using bank tags []
certRow g14792s11 on (rg14792 11) using bank tags [28,28,28,28,28,28,28]
theorem g14792 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,1,0,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,1,0,0,1,0] (.cons (g14792s0) (.cons (g14792s1) (.cons (g14792s2) (.cons (g14792s3) (.cons (g14792s4) (.cons (g14792s5) (.cons (g14792s6) (.cons (g14792s7) (.cons (g14792s8) (.cons (g14792s9) (.cons (g14792s10) (.cons (g14792s11) .nil))))))))))))
certRow g14793 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,1,0,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
