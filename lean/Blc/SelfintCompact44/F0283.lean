import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1262 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [2,0,2,0]
certRow f1262s0 on (rf1262 0) using bank tags []
certRow f1262s1 on (rf1262 1) using bank tags []
certRow f1262s2 on (rf1262 2) using bank tags [3,3]
certRow f1262s3 on (rf1262 3) using bank tags []
certRow f1262s4 on (rf1262 4) using bank tags []
certRow f1262s5 on (rf1262 5) using bank tags []
certRow f1262s6 on (rf1262 6) using bank tags []
certRow f1262s7 on (rf1262 7) using bank tags []
certRow f1262s8 on (rf1262 8) using bank tags []
certRow f1262s9 on (rf1262 9) using bank tags []
certRow f1262s10 on (rf1262 10) using bank tags []
certRow f1262s11 on (rf1262 11) using bank tags []
certRow f1262s12 on (rf1262 12) using bank tags []
certRow f1262s13 on (rf1262 13) using bank tags []
certRow f1262s14 on (rf1262 14) using bank tags []
certRow f1262s15 on (rf1262 15) using bank tags []
certRow f1262s16 on (rf1262 16) using bank tags []
certRow f1262s17 on (rf1262 17) using bank tags []
certRow f1262s18 on (rf1262 18) using bank tags []
certRow f1262s19 on (rf1262 19) using bank tags []
certRow f1262s20 on (rf1262 20) using bank tags []
certRow f1262s21 on (rf1262 21) using bank tags [3]
certRow f1262s22 on (rf1262 22) using bank tags []
certRow f1262s23 on (rf1262 23) using bank tags []
theorem f1262 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [2,0,2,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [2,0,2,0] (.cons (f1262s0) (.cons (f1262s1) (.cons (f1262s2) (.cons (f1262s3) (.cons (f1262s4) (.cons (f1262s5) (.cons (f1262s6) (.cons (f1262s7) (.cons (f1262s8) (.cons (f1262s9) (.cons (f1262s10) (.cons (f1262s11) (.cons (f1262s12) (.cons (f1262s13) (.cons (f1262s14) (.cons (f1262s15) (.cons (f1262s16) (.cons (f1262s17) (.cons (f1262s18) (.cons (f1262s19) (.cons (f1262s20) (.cons (f1262s21) (.cons (f1262s22) (.cons (f1262s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
