import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1252 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,0,2,1]
certRow f1252s0 on (rf1252 0) using bank tags []
certRow f1252s1 on (rf1252 1) using bank tags [3,3,3,3]
certRow f1252s2 on (rf1252 2) using bank tags [3]
certRow f1252s3 on (rf1252 3) using bank tags [3,3]
certRow f1252s4 on (rf1252 4) using bank tags []
certRow f1252s5 on (rf1252 5) using bank tags [3]
certRow f1252s6 on (rf1252 6) using bank tags []
certRow f1252s7 on (rf1252 7) using bank tags []
certRow f1252s8 on (rf1252 8) using bank tags []
certRow f1252s9 on (rf1252 9) using bank tags []
certRow f1252s10 on (rf1252 10) using bank tags []
certRow f1252s11 on (rf1252 11) using bank tags []
certRow f1252s12 on (rf1252 12) using bank tags []
certRow f1252s13 on (rf1252 13) using bank tags []
certRow f1252s14 on (rf1252 14) using bank tags []
certRow f1252s15 on (rf1252 15) using bank tags []
certRow f1252s16 on (rf1252 16) using bank tags []
certRow f1252s17 on (rf1252 17) using bank tags []
certRow f1252s18 on (rf1252 18) using bank tags []
certRow f1252s19 on (rf1252 19) using bank tags []
certRow f1252s20 on (rf1252 20) using bank tags []
certRow f1252s21 on (rf1252 21) using bank tags [3,3]
certRow f1252s22 on (rf1252 22) using bank tags []
certRow f1252s23 on (rf1252 23) using bank tags [3]
theorem f1252 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,0,2,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,0,2,1] (.cons (f1252s0) (.cons (f1252s1) (.cons (f1252s2) (.cons (f1252s3) (.cons (f1252s4) (.cons (f1252s5) (.cons (f1252s6) (.cons (f1252s7) (.cons (f1252s8) (.cons (f1252s9) (.cons (f1252s10) (.cons (f1252s11) (.cons (f1252s12) (.cons (f1252s13) (.cons (f1252s14) (.cons (f1252s15) (.cons (f1252s16) (.cons (f1252s17) (.cons (f1252s18) (.cons (f1252s19) (.cons (f1252s20) (.cons (f1252s21) (.cons (f1252s22) (.cons (f1252s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
