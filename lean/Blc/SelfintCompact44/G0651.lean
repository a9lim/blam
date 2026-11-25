import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13282 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,1,0,2]
certRow g13282s0 on (rg13282 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow g13282s1 on (rg13282 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,6,28,28,28,28]
certRow g13282s2 on (rg13282 2) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g13282s3 on (rg13282 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13282s4 on (rg13282 4) using bank tags []
certRow g13282s5 on (rg13282 5) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,1,28,28,28,28]
certRow g13282s6 on (rg13282 6) using bank tags [3,3,3,3,28]
certRow g13282s7 on (rg13282 7) using bank tags [3,3,20,20,20,20,20,20,20,20,20,6,6]
certRow g13282s8 on (rg13282 8) using bank tags [3,3,3,3]
certRow g13282s9 on (rg13282 9) using bank tags [28,28]
certRow g13282s10 on (rg13282 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13282s11 on (rg13282 11) using bank tags [27,27]
theorem g13282 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,1,0,2] (.cons (g13282s0) (.cons (g13282s1) (.cons (g13282s2) (.cons (g13282s3) (.cons (g13282s4) (.cons (g13282s5) (.cons (g13282s6) (.cons (g13282s7) (.cons (g13282s8) (.cons (g13282s9) (.cons (g13282s10) (.cons (g13282s11) .nil))))))))))))
certRow g13283 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,1,0,2]) using bank tags []
certRow g13284 on (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,1,1,1]) using bank tags []
certRow g13285 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,1,1,1]) using bank tags []
private abbrev rg13286 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,1,2,0]
certRow g13286s0 on (rg13286 0) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13286s1 on (rg13286 1) using bank tags [3,3,3,3,1,28,28,28,28]
certRow g13286s2 on (rg13286 2) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,6]
certRow g13286s3 on (rg13286 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow g13286s4 on (rg13286 4) using bank tags [3]
certRow g13286s5 on (rg13286 5) using bank tags [3,3,3,3,28,28,28,28]
certRow g13286s6 on (rg13286 6) using bank tags [3,3,3,28,28]
certRow g13286s7 on (rg13286 7) using bank tags [3,3,3,3,3,20,20,20,20,20,30,6]
certRow g13286s8 on (rg13286 8) using bank tags [3,3,3,3,3]
certRow g13286s9 on (rg13286 9) using bank tags [3,3,3,3,3,3,3,3,28,28]
certRow g13286s10 on (rg13286 10) using bank tags [3,3,3,3,3,3,28,28]
certRow g13286s11 on (rg13286 11) using bank tags [3,3,3,3,3,28,28,27]
theorem g13286 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,1,2,0] (.cons (g13286s0) (.cons (g13286s1) (.cons (g13286s2) (.cons (g13286s3) (.cons (g13286s4) (.cons (g13286s5) (.cons (g13286s6) (.cons (g13286s7) (.cons (g13286s8) (.cons (g13286s9) (.cons (g13286s10) (.cons (g13286s11) .nil))))))))))))
certRow g13287 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,1,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
