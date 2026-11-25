import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12204 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,1,0,0,2]
certRow g12204s0 on (rg12204 0) using bank tags [3,3]
certRow g12204s1 on (rg12204 1) using bank tags []
certRow g12204s2 on (rg12204 2) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g12204s3 on (rg12204 3) using bank tags [3,3,3,3,3]
certRow g12204s4 on (rg12204 4) using bank tags [3,3,3,3,3]
certRow g12204s5 on (rg12204 5) using bank tags [3,28,1,28,28,28,1,28,28,28,28,28]
certRow g12204s6 on (rg12204 6) using bank tags []
certRow g12204s7 on (rg12204 7) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,48,48,48,48,48,29,48,29,48,29,48,29,48,29,48]
theorem g12204 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,1,0,0,2] (.cons (g12204s0) (.cons (g12204s1) (.cons (g12204s2) (.cons (g12204s3) (.cons (g12204s4) (.cons (g12204s5) (.cons (g12204s6) (.cons (g12204s7) .nil))))))))
certRow g12205 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,1,0,0,2]) using bank tags []
certRow g12206 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,1,0,1,1]) using bank tags []
certRow g12207 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,1,0,1,1]) using bank tags []
private abbrev rg12208 (i : Nat) := Split43.five 12 i 7 7 4 false 3 4 5 [0,1,0,2,0]
certRow g12208s0 on (rg12208 0) using bank tags [3,3,3,3,3,3,28,100,28,100]
certRow g12208s1 on (rg12208 1) using bank tags [28,28]
certRow g12208s2 on (rg12208 2) using bank tags [28,28,28,28,28,28]
certRow g12208s3 on (rg12208 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g12208s4 on (rg12208 4) using bank tags [28,28]
certRow g12208s5 on (rg12208 5) using bank tags [3,3,28,28]
certRow g12208s6 on (rg12208 6) using bank tags [3,3]
certRow g12208s7 on (rg12208 7) using bank tags [3,3,3,3]
certRow g12208s8 on (rg12208 8) using bank tags [3,3,28,28,3,3,29,48,29,48]
certRow g12208s9 on (rg12208 9) using bank tags [3,3,3,3,3]
certRow g12208s10 on (rg12208 10) using bank tags [3,3,28,28]
certRow g12208s11 on (rg12208 11) using bank tags [28,28,28,28,28,48,48,48,48,48,29,48,29,48,29,48,29,48,29,48,29,48]
theorem g12208 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,1,0,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 4 5 [0,1,0,2,0] (.cons (g12208s0) (.cons (g12208s1) (.cons (g12208s2) (.cons (g12208s3) (.cons (g12208s4) (.cons (g12208s5) (.cons (g12208s6) (.cons (g12208s7) (.cons (g12208s8) (.cons (g12208s9) (.cons (g12208s10) (.cons (g12208s11) .nil))))))))))))
certRow g12209 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,1,0,2,0]) using bank tags []
certRow g12210 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,1,1,0,1]) using bank tags []
certRow g12211 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,1,1,0,1]) using bank tags []
certRow g12212 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,1,1,1,0]) using bank tags []
certRow g12213 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
