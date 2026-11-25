import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13441 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,2,1,0,0]
certRow g13441s0 on (rg13441 0) using bank tags []
certRow g13441s1 on (rg13441 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13441s2 on (rg13441 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13441s3 on (rg13441 3) using bank tags [28,28,28,27,59,1]
certRow g13441s4 on (rg13441 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13441s5 on (rg13441 5) using bank tags []
certRow g13441s6 on (rg13441 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g13441s7 on (rg13441 7) using bank tags [28,28,28,0,59,1,39,14,6,0,1,1,1,28,1,1,1,1] except [Floor44.e1197493468394,Floor44.e1196965248234]
certRow g13441s8 on (rg13441 8) using bank tags []
certRow g13441s9 on (rg13441 9) using bank tags []
certRow g13441s10 on (rg13441 10) using bank tags [18,1,6,6,1,1,1,1,1,1,1,1,18,1,16,6,1,1,1,1,32,1,1,1,18,1,6,6,1,1,1,1,1,1,1,1]
certRow g13441s11 on (rg13441 11) using bank tags []
theorem g13441 (hard : BadRow [Floor44.e1197493468394,Floor44.e1196965248234]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,2,1,0,0] (.cons (g13441s0) (.cons (g13441s1) (.cons (g13441s2) (.cons (g13441s3) (.cons (g13441s4) (.cons (g13441s5) (.cons (g13441s6) (.cons (g13441s7 (.cons (hard.get (by decide : Floor44.e1197493468394 ∈ [Floor44.e1197493468394,Floor44.e1196965248234])) (.cons (hard.get (by decide : Floor44.e1196965248234 ∈ [Floor44.e1197493468394,Floor44.e1196965248234])) .nil))) (.cons (g13441s8) (.cons (g13441s9) (.cons (g13441s10) (.cons (g13441s11) .nil))))))))))))
certRow g13442 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,3,0,0,0]) using bank tags []
certRow g13443 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,3,0,0,0]) using bank tags []
certRow g13444 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [1,0,0,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13445 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [1,0,0,0,2]) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13446 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [1,0,0,1,1]) using bank tags []
certRow g13447 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [1,0,0,1,1]) using bank tags []
certRow g13448 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [1,0,0,2,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13449 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [1,0,0,2,0]) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
end Blc.SelfintSingleObject.Compact44
