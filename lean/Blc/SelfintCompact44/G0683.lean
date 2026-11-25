import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13407 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,0,0,1,2]
certRow g13407s0 on (rg13407 0) using bank tags []
certRow g13407s1 on (rg13407 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13407s2 on (rg13407 2) using bank tags [28,28,28,27,59,1]
certRow g13407s3 on (rg13407 3) using bank tags []
certRow g13407s4 on (rg13407 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,15,14,19,19,1,1,1,28,1,1,1,1]
certRow g13407s5 on (rg13407 5) using bank tags []
certRow g13407s6 on (rg13407 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,15,59,1]
certRow g13407s7 on (rg13407 7) using bank tags []
certRow g13407s8 on (rg13407 8) using bank tags []
certRow g13407s9 on (rg13407 9) using bank tags []
certRow g13407s10 on (rg13407 10) using bank tags [28,28,28,6,59,1,8,1,1,1,6,1,51,1,1,1,1,1,8,1,1,1,6,1,6,1,1,1,1,1,8,1,1,1,22,1,6,1,1,1,1,1,10,1,19,19,1,1,1,1,1,1,1,1,6,14,1,0,1,1,6,28,1,1,1,1] except [Floor44.e1196967070574]
certRow g13407s11 on (rg13407 11) using bank tags []
theorem g13407 (hard : BadRow [Floor44.e1196967070574]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,0,0,1,2] (.cons (g13407s0) (.cons (g13407s1) (.cons (g13407s2) (.cons (g13407s3) (.cons (g13407s4) (.cons (g13407s5) (.cons (g13407s6) (.cons (g13407s7) (.cons (g13407s8) (.cons (g13407s9) (.cons (g13407s10 (.cons (hard.get (by decide : Floor44.e1196967070574 ∈ [Floor44.e1196967070574])) .nil)) (.cons (g13407s11) .nil))))))))))))
certRow g13408 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,0,2,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,19,19,29,29,19,19,29,29,29,29,29,0,29,29,29,0,29,29,29,29,19,19,29,29,19,19,29,29] except [Floor44.e4817624501110,Floor44.e4818161372022]
private abbrev rg13409 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,0,0,2,1]
certRow g13409s0 on (rg13409 0) using bank tags []
certRow g13409s1 on (rg13409 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13409s2 on (rg13409 2) using bank tags [28,28,28,27,59,1]
certRow g13409s3 on (rg13409 3) using bank tags []
certRow g13409s4 on (rg13409 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,15,14,19,19,1,1,1,28,1,1,1,1]
certRow g13409s5 on (rg13409 5) using bank tags []
certRow g13409s6 on (rg13409 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,15,59,1]
certRow g13409s7 on (rg13409 7) using bank tags []
certRow g13409s8 on (rg13409 8) using bank tags []
certRow g13409s9 on (rg13409 9) using bank tags []
certRow g13409s10 on (rg13409 10) using bank tags [28,28,28,6,59,1,8,1,1,1,6,1,51,1,1,1,1,1,8,1,1,1,6,1,17,1,1,1,1,1,8,1,1,1,6,1,6,1,1,1,1,1,10,1,19,19,1,1,1,1,1,1,1,1,6,14,1,0,1,1,6,28,1,1,1,1] except [Floor44.e1196967070582]
certRow g13409s11 on (rg13409 11) using bank tags []
theorem g13409 (hard : BadRow [Floor44.e1196967070582]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,0,0,2,1] (.cons (g13409s0) (.cons (g13409s1) (.cons (g13409s2) (.cons (g13409s3) (.cons (g13409s4) (.cons (g13409s5) (.cons (g13409s6) (.cons (g13409s7) (.cons (g13409s8) (.cons (g13409s9) (.cons (g13409s10 (.cons (hard.get (by decide : Floor44.e1196967070582 ∈ [Floor44.e1196967070582])) .nil)) (.cons (g13409s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
