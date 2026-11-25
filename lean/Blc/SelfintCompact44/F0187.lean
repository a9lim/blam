import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1060 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,4,0,0]
certRow f1060s0 on (rf1060 0) using bank tags []
certRow f1060s1 on (rf1060 1) using bank tags []
certRow f1060s2 on (rf1060 2) using bank tags []
certRow f1060s3 on (rf1060 3) using bank tags []
certRow f1060s4 on (rf1060 4) using bank tags []
certRow f1060s5 on (rf1060 5) using bank tags []
certRow f1060s6 on (rf1060 6) using bank tags []
certRow f1060s7 on (rf1060 7) using bank tags []
certRow f1060s8 on (rf1060 8) using bank tags []
certRow f1060s9 on (rf1060 9) using bank tags []
certRow f1060s10 on (rf1060 10) using bank tags []
certRow f1060s11 on (rf1060 11) using bank tags []
theorem f1060 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,4,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,4,0,0] (.cons (f1060s0) (.cons (f1060s1) (.cons (f1060s2) (.cons (f1060s3) (.cons (f1060s4) (.cons (f1060s5) (.cons (f1060s6) (.cons (f1060s7) (.cons (f1060s8) (.cons (f1060s9) (.cons (f1060s10) (.cons (f1060s11) .nil))))))))))))
private abbrev rf1061 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,0,3]
certRow f1061s0 on (rf1061 0) using bank tags [3,3,3,3,3]
certRow f1061s1 on (rf1061 1) using bank tags [3,3,3,3,3]
certRow f1061s2 on (rf1061 2) using bank tags [3,3]
certRow f1061s3 on (rf1061 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1061s4 on (rf1061 4) using bank tags [3,3,3,3,3]
certRow f1061s5 on (rf1061 5) using bank tags [3,3]
certRow f1061s6 on (rf1061 6) using bank tags [3,3,3,3,3]
certRow f1061s7 on (rf1061 7) using bank tags [3,3]
certRow f1061s8 on (rf1061 8) using bank tags []
certRow f1061s9 on (rf1061 9) using bank tags [3,3,3,3,3]
certRow f1061s10 on (rf1061 10) using bank tags []
certRow f1061s11 on (rf1061 11) using bank tags []
theorem f1061 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,0,3] (.cons (f1061s0) (.cons (f1061s1) (.cons (f1061s2) (.cons (f1061s3) (.cons (f1061s4) (.cons (f1061s5) (.cons (f1061s6) (.cons (f1061s7) (.cons (f1061s8) (.cons (f1061s9) (.cons (f1061s10) (.cons (f1061s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
