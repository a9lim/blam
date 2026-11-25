import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1111 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [3,0,0,0,1]
certRow f1111s0 on (rf1111 0) using bank tags []
certRow f1111s1 on (rf1111 1) using bank tags [3,3,3,3,3]
certRow f1111s2 on (rf1111 2) using bank tags [3,3]
certRow f1111s3 on (rf1111 3) using bank tags [3,3]
certRow f1111s4 on (rf1111 4) using bank tags [3,3,3,3,3]
certRow f1111s5 on (rf1111 5) using bank tags []
certRow f1111s6 on (rf1111 6) using bank tags []
certRow f1111s7 on (rf1111 7) using bank tags []
certRow f1111s8 on (rf1111 8) using bank tags []
certRow f1111s9 on (rf1111 9) using bank tags []
certRow f1111s10 on (rf1111 10) using bank tags []
certRow f1111s11 on (rf1111 11) using bank tags []
theorem f1111 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [3,0,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [3,0,0,0,1] (.cons (f1111s0) (.cons (f1111s1) (.cons (f1111s2) (.cons (f1111s3) (.cons (f1111s4) (.cons (f1111s5) (.cons (f1111s6) (.cons (f1111s7) (.cons (f1111s8) (.cons (f1111s9) (.cons (f1111s10) (.cons (f1111s11) .nil))))))))))))
private abbrev rf1112 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [3,0,0,1,0]
certRow f1112s0 on (rf1112 0) using bank tags []
certRow f1112s1 on (rf1112 1) using bank tags [3,3,3,3,3]
certRow f1112s2 on (rf1112 2) using bank tags [3,3]
certRow f1112s3 on (rf1112 3) using bank tags [3,3]
certRow f1112s4 on (rf1112 4) using bank tags [3,3,3,3,3]
certRow f1112s5 on (rf1112 5) using bank tags []
certRow f1112s6 on (rf1112 6) using bank tags []
certRow f1112s7 on (rf1112 7) using bank tags []
certRow f1112s8 on (rf1112 8) using bank tags []
certRow f1112s9 on (rf1112 9) using bank tags []
certRow f1112s10 on (rf1112 10) using bank tags []
certRow f1112s11 on (rf1112 11) using bank tags []
theorem f1112 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [3,0,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [3,0,0,1,0] (.cons (f1112s0) (.cons (f1112s1) (.cons (f1112s2) (.cons (f1112s3) (.cons (f1112s4) (.cons (f1112s5) (.cons (f1112s6) (.cons (f1112s7) (.cons (f1112s8) (.cons (f1112s9) (.cons (f1112s10) (.cons (f1112s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
