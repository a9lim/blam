import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1269 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [4,0,0,0]
certRow f1269s0 on (rf1269 0) using bank tags []
certRow f1269s1 on (rf1269 1) using bank tags []
certRow f1269s2 on (rf1269 2) using bank tags []
certRow f1269s3 on (rf1269 3) using bank tags []
certRow f1269s4 on (rf1269 4) using bank tags []
certRow f1269s5 on (rf1269 5) using bank tags []
certRow f1269s6 on (rf1269 6) using bank tags []
certRow f1269s7 on (rf1269 7) using bank tags []
certRow f1269s8 on (rf1269 8) using bank tags []
certRow f1269s9 on (rf1269 9) using bank tags []
certRow f1269s10 on (rf1269 10) using bank tags []
certRow f1269s11 on (rf1269 11) using bank tags []
certRow f1269s12 on (rf1269 12) using bank tags []
certRow f1269s13 on (rf1269 13) using bank tags []
certRow f1269s14 on (rf1269 14) using bank tags []
certRow f1269s15 on (rf1269 15) using bank tags []
certRow f1269s16 on (rf1269 16) using bank tags []
certRow f1269s17 on (rf1269 17) using bank tags []
certRow f1269s18 on (rf1269 18) using bank tags []
certRow f1269s19 on (rf1269 19) using bank tags []
certRow f1269s20 on (rf1269 20) using bank tags []
certRow f1269s21 on (rf1269 21) using bank tags []
certRow f1269s22 on (rf1269 22) using bank tags []
certRow f1269s23 on (rf1269 23) using bank tags []
theorem f1269 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [4,0,0,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [4,0,0,0] (.cons (f1269s0) (.cons (f1269s1) (.cons (f1269s2) (.cons (f1269s3) (.cons (f1269s4) (.cons (f1269s5) (.cons (f1269s6) (.cons (f1269s7) (.cons (f1269s8) (.cons (f1269s9) (.cons (f1269s10) (.cons (f1269s11) (.cons (f1269s12) (.cons (f1269s13) (.cons (f1269s14) (.cons (f1269s15) (.cons (f1269s16) (.cons (f1269s17) (.cons (f1269s18) (.cons (f1269s19) (.cons (f1269s20) (.cons (f1269s21) (.cons (f1269s22) (.cons (f1269s23) .nil))))))))))))))))))))))))
certRow f1270 on (Grammar43.fourRow ⟨1,2,0,2,5,8⟩ [0,0] [0,2,2,2,2]) using bank tags []
certRow f1271 on (Grammar43.fourRow ⟨1,2,0,2,5,8⟩ [0,0] [1,1,2,2,2]) using bank tags []
certRow f1272 on (Grammar43.fourRow ⟨1,2,0,2,5,8⟩ [0,0] [1,2,1,2,2]) using bank tags []
certRow f1273 on (Grammar43.fourRow ⟨1,2,0,2,5,8⟩ [0,0] [1,2,2,1,2]) using bank tags []
certRow f1274 on (Grammar43.fourRow ⟨1,2,0,2,5,8⟩ [0,0] [1,2,2,2,1]) using bank tags []
certRow f1275 on (Grammar43.fourRow ⟨1,2,0,2,5,8⟩ [0,0] [2,0,2,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
