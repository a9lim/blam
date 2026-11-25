import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12186 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,0,0,1,2]
certRow g12186s0 on (rg12186 0) using bank tags []
certRow g12186s1 on (rg12186 1) using bank tags [3,3,20,27]
certRow g12186s2 on (rg12186 2) using bank tags [3,3,3,3,3,3,28]
certRow g12186s3 on (rg12186 3) using bank tags [3,28,3]
certRow g12186s4 on (rg12186 4) using bank tags [3,3,3]
certRow g12186s5 on (rg12186 5) using bank tags [28,28,22,28,28,28,29,163]
certRow g12186s6 on (rg12186 6) using bank tags [3,3]
certRow g12186s7 on (rg12186 7) using bank tags [28,3,3,3,3,3,3,28,3,3,48,48,48,48,48,29,48,27,48]
theorem g12186 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,0,1,2]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,0,0,1,2] (.cons (g12186s0) (.cons (g12186s1) (.cons (g12186s2) (.cons (g12186s3) (.cons (g12186s4) (.cons (g12186s5) (.cons (g12186s6) (.cons (g12186s7) .nil))))))))
certRow g12187 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,0,1,2]) using bank tags []
private abbrev rg12188 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,0,0,2,1]
certRow g12188s0 on (rg12188 0) using bank tags []
certRow g12188s1 on (rg12188 1) using bank tags [3,3,20,27]
certRow g12188s2 on (rg12188 2) using bank tags [3,3,3,3,3,3,3,28]
certRow g12188s3 on (rg12188 3) using bank tags [3,28,3]
certRow g12188s4 on (rg12188 4) using bank tags [3,3,3]
certRow g12188s5 on (rg12188 5) using bank tags [28,28,6,28,28,28,29,78]
certRow g12188s6 on (rg12188 6) using bank tags [3,3]
certRow g12188s7 on (rg12188 7) using bank tags [28,3,3,3,3,3,3,28,3,3,48,48,48,48,48,29,48,27,48]
theorem g12188 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,0,2,1]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,0,0,2,1] (.cons (g12188s0) (.cons (g12188s1) (.cons (g12188s2) (.cons (g12188s3) (.cons (g12188s4) (.cons (g12188s5) (.cons (g12188s6) (.cons (g12188s7) .nil))))))))
certRow g12189 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,0,2,1]) using bank tags []
certRow g12190 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,0,3,0]) using bank tags []
certRow g12191 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,0,3,0]) using bank tags []
private abbrev rg12192 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,0,1,0,2]
certRow g12192s0 on (rg12192 0) using bank tags [3]
certRow g12192s1 on (rg12192 1) using bank tags [3,3,3,3,20,27,20,27]
certRow g12192s2 on (rg12192 2) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g12192s3 on (rg12192 3) using bank tags [3,3,28,28,3,3]
certRow g12192s4 on (rg12192 4) using bank tags [3,3,3,3,3,3]
certRow g12192s5 on (rg12192 5) using bank tags [28,28,28,28,28,28,28,29,46,29,46]
certRow g12192s6 on (rg12192 6) using bank tags [3,3,3,3]
certRow g12192s7 on (rg12192 7) using bank tags [28,28,3,3,3,3,3,3,3,3,3,3,3,28,28,3,3,3,3,48,48,48,48,48,48,48,48,48,29,48,29,48,27,48,27,48]
theorem g12192 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,0,1,0,2] (.cons (g12192s0) (.cons (g12192s1) (.cons (g12192s2) (.cons (g12192s3) (.cons (g12192s4) (.cons (g12192s5) (.cons (g12192s6) (.cons (g12192s7) .nil))))))))
certRow g12193 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,1,0,2]) using bank tags []
certRow g12194 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
