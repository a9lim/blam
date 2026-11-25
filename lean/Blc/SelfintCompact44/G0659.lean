import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13322 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,0,1,1,0]
certRow g13322s0 on (rg13322 0) using bank tags [3,3,3,3,3,3,3,3]
certRow g13322s1 on (rg13322 1) using bank tags [3,3,3,3,3,3,3,3,3,3,205,28,28,28,28]
certRow g13322s2 on (rg13322 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13322s3 on (rg13322 3) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow g13322s4 on (rg13322 4) using bank tags []
certRow g13322s5 on (rg13322 5) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g13322s6 on (rg13322 6) using bank tags [3,3,3,28,28,28,28,28]
certRow g13322s7 on (rg13322 7) using bank tags [3,3,3,3,3,3]
certRow g13322s8 on (rg13322 8) using bank tags [3,3,3,3,3,3,28]
certRow g13322s9 on (rg13322 9) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g13322s10 on (rg13322 10) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow g13322s11 on (rg13322 11) using bank tags [3,3,3,3,3,28,28]
theorem g13322 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,0,1,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,0,1,1,0] (.cons (g13322s0) (.cons (g13322s1) (.cons (g13322s2) (.cons (g13322s3) (.cons (g13322s4) (.cons (g13322s5) (.cons (g13322s6) (.cons (g13322s7) (.cons (g13322s8) (.cons (g13322s9) (.cons (g13322s10) (.cons (g13322s11) .nil))))))))))))
certRow g13323 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,0,1,1,0]) using bank tags []
private abbrev rg13324 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,0,2,0,0]
certRow g13324s0 on (rg13324 0) using bank tags [3,3,3]
certRow g13324s1 on (rg13324 1) using bank tags [3,3,3,3,3]
certRow g13324s2 on (rg13324 2) using bank tags [3,3,3,3,3,3,1,1,28,28,28,28]
certRow g13324s3 on (rg13324 3) using bank tags [3,3,3,28,28,28]
certRow g13324s4 on (rg13324 4) using bank tags []
certRow g13324s5 on (rg13324 5) using bank tags [3,3,3,28,28,28,28,28]
certRow g13324s6 on (rg13324 6) using bank tags [25]
certRow g13324s7 on (rg13324 7) using bank tags []
certRow g13324s8 on (rg13324 8) using bank tags []
certRow g13324s9 on (rg13324 9) using bank tags [3,3,3,3]
certRow g13324s10 on (rg13324 10) using bank tags [3,3]
certRow g13324s11 on (rg13324 11) using bank tags [9,28,23,28]
theorem g13324 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,0,2,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,0,2,0,0] (.cons (g13324s0) (.cons (g13324s1) (.cons (g13324s2) (.cons (g13324s3) (.cons (g13324s4) (.cons (g13324s5) (.cons (g13324s6) (.cons (g13324s7) (.cons (g13324s8) (.cons (g13324s9) (.cons (g13324s10) (.cons (g13324s11) .nil))))))))))))
certRow g13325 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,0,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
