import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13318 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,0,0,2,0]
certRow g13318s0 on (rg13318 0) using bank tags [3,3,3,3,3]
certRow g13318s1 on (rg13318 1) using bank tags [3,3,3,3,3]
certRow g13318s2 on (rg13318 2) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28]
certRow g13318s3 on (rg13318 3) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow g13318s4 on (rg13318 4) using bank tags []
certRow g13318s5 on (rg13318 5) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow g13318s6 on (rg13318 6) using bank tags [3,28,28]
certRow g13318s7 on (rg13318 7) using bank tags [3,3]
certRow g13318s8 on (rg13318 8) using bank tags [3,3,28]
certRow g13318s9 on (rg13318 9) using bank tags []
certRow g13318s10 on (rg13318 10) using bank tags [3,3,28,28]
certRow g13318s11 on (rg13318 11) using bank tags []
theorem g13318 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,0,0,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,0,0,2,0] (.cons (g13318s0) (.cons (g13318s1) (.cons (g13318s2) (.cons (g13318s3) (.cons (g13318s4) (.cons (g13318s5) (.cons (g13318s6) (.cons (g13318s7) (.cons (g13318s8) (.cons (g13318s9) (.cons (g13318s10) (.cons (g13318s11) .nil))))))))))))
certRow g13319 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,0,0,2,0]) using bank tags []
private abbrev rg13320 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,0,1,0,1]
certRow g13320s0 on (rg13320 0) using bank tags [3,3,3,3,3,3]
certRow g13320s1 on (rg13320 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,205,28,28,28,28]
certRow g13320s2 on (rg13320 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,28,28,28,28,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13320s3 on (rg13320 3) using bank tags [3,3,3,3,3,3]
certRow g13320s4 on (rg13320 4) using bank tags [28,28,28,28,28,28]
certRow g13320s5 on (rg13320 5) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,205,28,28,28,28]
certRow g13320s6 on (rg13320 6) using bank tags [3,3,3,3,1,28,28,28,28]
certRow g13320s7 on (rg13320 7) using bank tags [3,3,3,3]
certRow g13320s8 on (rg13320 8) using bank tags [3,3,3,3,3,3,28,28]
certRow g13320s9 on (rg13320 9) using bank tags [28,28]
certRow g13320s10 on (rg13320 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,9,28,23,28]
certRow g13320s11 on (rg13320 11) using bank tags [3,3,3,3,3]
theorem g13320 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,0,1,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,0,1,0,1] (.cons (g13320s0) (.cons (g13320s1) (.cons (g13320s2) (.cons (g13320s3) (.cons (g13320s4) (.cons (g13320s5) (.cons (g13320s6) (.cons (g13320s7) (.cons (g13320s8) (.cons (g13320s9) (.cons (g13320s10) (.cons (g13320s11) .nil))))))))))))
certRow g13321 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,0,1,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
