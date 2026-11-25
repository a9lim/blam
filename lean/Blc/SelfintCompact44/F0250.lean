import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1222 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,2,0,1]
certRow f1222s0 on (rf1222 0) using bank tags [3]
certRow f1222s1 on (rf1222 1) using bank tags [3]
certRow f1222s2 on (rf1222 2) using bank tags [3,3]
certRow f1222s3 on (rf1222 3) using bank tags []
certRow f1222s4 on (rf1222 4) using bank tags []
certRow f1222s5 on (rf1222 5) using bank tags [3]
certRow f1222s6 on (rf1222 6) using bank tags []
certRow f1222s7 on (rf1222 7) using bank tags []
certRow f1222s8 on (rf1222 8) using bank tags []
certRow f1222s9 on (rf1222 9) using bank tags [3,3]
certRow f1222s10 on (rf1222 10) using bank tags []
certRow f1222s11 on (rf1222 11) using bank tags []
theorem f1222 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,2,0,1] (.cons (f1222s0) (.cons (f1222s1) (.cons (f1222s2) (.cons (f1222s3) (.cons (f1222s4) (.cons (f1222s5) (.cons (f1222s6) (.cons (f1222s7) (.cons (f1222s8) (.cons (f1222s9) (.cons (f1222s10) (.cons (f1222s11) .nil))))))))))))
private abbrev rf1223 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,2,1,0]
certRow f1223s0 on (rf1223 0) using bank tags [3]
certRow f1223s1 on (rf1223 1) using bank tags []
certRow f1223s2 on (rf1223 2) using bank tags [3,3,3]
certRow f1223s3 on (rf1223 3) using bank tags []
certRow f1223s4 on (rf1223 4) using bank tags []
certRow f1223s5 on (rf1223 5) using bank tags [3]
certRow f1223s6 on (rf1223 6) using bank tags []
certRow f1223s7 on (rf1223 7) using bank tags []
certRow f1223s8 on (rf1223 8) using bank tags []
certRow f1223s9 on (rf1223 9) using bank tags [3]
certRow f1223s10 on (rf1223 10) using bank tags []
certRow f1223s11 on (rf1223 11) using bank tags []
theorem f1223 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,2,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,2,1,0] (.cons (f1223s0) (.cons (f1223s1) (.cons (f1223s2) (.cons (f1223s3) (.cons (f1223s4) (.cons (f1223s5) (.cons (f1223s6) (.cons (f1223s7) (.cons (f1223s8) (.cons (f1223s9) (.cons (f1223s10) (.cons (f1223s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
