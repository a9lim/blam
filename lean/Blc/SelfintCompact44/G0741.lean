import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13974 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,1,2,1,0]
certRow g13974s0 on (rg13974 0) using bank tags []
certRow g13974s1 on (rg13974 1) using bank tags [28,28,28,14,28,28,28,14,28,28,28,1]
certRow g13974s2 on (rg13974 2) using bank tags [28,28,28,1,28,28,28,1]
certRow g13974s3 on (rg13974 3) using bank tags [28,28,28,1,28,28,28,1]
certRow g13974s4 on (rg13974 4) using bank tags [28,28,28,1,28,28,28,1,28,28,28,1]
certRow g13974s5 on (rg13974 5) using bank tags []
certRow g13974s6 on (rg13974 6) using bank tags [28,28,28,26,28,28,28,26,28,28,28,1,1,29,29,1,29,1,29,1]
certRow g13974s7 on (rg13974 7) using bank tags []
certRow g13974s8 on (rg13974 8) using bank tags []
certRow g13974s9 on (rg13974 9) using bank tags []
certRow g13974s10 on (rg13974 10) using bank tags [1,29,29,10,29,1,29,0,35,29,29,6,29,35,29,6,19,19,29,6,19,19,29,6,19,19,29,22,19,19,29,6,19,19,19,29,45,19,19,29,28] except [Floor44.e4778693955386]
certRow g13974s11 on (rg13974 11) using bank tags []
theorem g13974 (hard : BadRow [Floor44.e4778693955386]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,1,2,1,0] (.cons (g13974s0) (.cons (g13974s1) (.cons (g13974s2) (.cons (g13974s3) (.cons (g13974s4) (.cons (g13974s5) (.cons (g13974s6) (.cons (g13974s7) (.cons (g13974s8) (.cons (g13974s9) (.cons (g13974s10 (.cons (hard.get (by decide : Floor44.e4778693955386 ∈ [Floor44.e4778693955386])) .nil)) (.cons (g13974s11) .nil))))))))))))
private abbrev rg13975 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,1,2,1,0]
certRow g13975s0 on (rg13975 0) using bank tags []
certRow g13975s1 on (rg13975 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13975s2 on (rg13975 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13975s3 on (rg13975 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13975s4 on (rg13975 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,27,57,1,1,29,1,29,1,1,1]
certRow g13975s5 on (rg13975 5) using bank tags []
certRow g13975s6 on (rg13975 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,1,1]
certRow g13975s7 on (rg13975 7) using bank tags []
certRow g13975s8 on (rg13975 8) using bank tags []
certRow g13975s9 on (rg13975 9) using bank tags []
certRow g13975s10 on (rg13975 10) using bank tags [1,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,19,12,19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g13975s11 on (rg13975 11) using bank tags []
theorem g13975 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,1,2,1,0] (.cons (g13975s0) (.cons (g13975s1) (.cons (g13975s2) (.cons (g13975s3) (.cons (g13975s4) (.cons (g13975s5) (.cons (g13975s6) (.cons (g13975s7) (.cons (g13975s8) (.cons (g13975s9) (.cons (g13975s10) (.cons (g13975s11) .nil))))))))))))
certRow g13976 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,3,0,0]) using bank tags []
certRow g13977 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,3,0,0]) using bank tags []
certRow g13978 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,2,0,0,2]) using bank tags []
certRow g13979 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,2,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
