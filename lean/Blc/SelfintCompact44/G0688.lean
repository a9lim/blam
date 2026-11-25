import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13419 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 5 [0,0,2,0,1]
certRow g13419s0 on (rg13419 0) using bank tags []
certRow g13419s1 on (rg13419 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13419s2 on (rg13419 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13419s3 on (rg13419 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13419s4 on (rg13419 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,15,14,19,19,1,1,1,28,1,1,1,1,15,14,19,19,1,1,1,28,1,1,1,1]
certRow g13419s5 on (rg13419 5) using bank tags []
certRow g13419s6 on (rg13419 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,15,59,1,28,28,28,15,59,1]
certRow g13419s7 on (rg13419 7) using bank tags []
certRow g13419s8 on (rg13419 8) using bank tags []
certRow g13419s9 on (rg13419 9) using bank tags []
certRow g13419s10 on (rg13419 10) using bank tags [28,28,28,6,59,1,28,28,28,6,59,1]
certRow g13419s11 on (rg13419 11) using bank tags []
certRow g13419s12 on (rg13419 12) using bank tags []
certRow g13419s13 on (rg13419 13) using bank tags []
certRow g13419s14 on (rg13419 14) using bank tags []
certRow g13419s15 on (rg13419 15) using bank tags []
certRow g13419s16 on (rg13419 16) using bank tags []
certRow g13419s17 on (rg13419 17) using bank tags []
certRow g13419s18 on (rg13419 18) using bank tags []
certRow g13419s19 on (rg13419 19) using bank tags []
certRow g13419s20 on (rg13419 20) using bank tags []
certRow g13419s21 on (rg13419 21) using bank tags []
certRow g13419s22 on (rg13419 22) using bank tags [17,1,1,1,6,1,6,1,1,1,1,1,14,1,15,1,14,1,6,1,14,1,1,1,8,1,1,1,6,1,6,1,1,1,1,1,14,1,15,1,14,1,6,1,14,1,1,1,8,1,1,1,6,1,12,1,1,1,1,1,39,1,19,19,1,1,1,1,1,1,1,1,17,1,19,19,1,1,1,1,1,1,1,1,6,14,6,0,6,1,6,28,1,1,1,1,6,14,6,0,6,1,12,28,1,1,1,1] except [Floor44.e1196967071542,Floor44.e1196967070678]
certRow g13419s23 on (rg13419 23) using bank tags []
theorem g13419 (hard : BadRow [Floor44.e1196967071542,Floor44.e1196967070678]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,2,0,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 5 [0,0,2,0,1] (.cons (g13419s0) (.cons (g13419s1) (.cons (g13419s2) (.cons (g13419s3) (.cons (g13419s4) (.cons (g13419s5) (.cons (g13419s6) (.cons (g13419s7) (.cons (g13419s8) (.cons (g13419s9) (.cons (g13419s10) (.cons (g13419s11) (.cons (g13419s12) (.cons (g13419s13) (.cons (g13419s14) (.cons (g13419s15) (.cons (g13419s16) (.cons (g13419s17) (.cons (g13419s18) (.cons (g13419s19) (.cons (g13419s20) (.cons (g13419s21) (.cons (g13419s22 (.cons (hard.get (by decide : Floor44.e1196967071542 ∈ [Floor44.e1196967071542,Floor44.e1196967070678])) (.cons (hard.get (by decide : Floor44.e1196967070678 ∈ [Floor44.e1196967071542,Floor44.e1196967070678])) .nil))) (.cons (g13419s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
