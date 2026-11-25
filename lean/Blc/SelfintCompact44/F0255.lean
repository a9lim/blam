import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1232 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [5,0,1,0]
certRow f1232s0 on (rf1232 0) using bank tags []
certRow f1232s1 on (rf1232 1) using bank tags [3,3]
certRow f1232s2 on (rf1232 2) using bank tags [3]
certRow f1232s3 on (rf1232 3) using bank tags [3,3]
certRow f1232s4 on (rf1232 4) using bank tags []
certRow f1232s5 on (rf1232 5) using bank tags []
certRow f1232s6 on (rf1232 6) using bank tags []
certRow f1232s7 on (rf1232 7) using bank tags []
certRow f1232s8 on (rf1232 8) using bank tags []
certRow f1232s9 on (rf1232 9) using bank tags []
certRow f1232s10 on (rf1232 10) using bank tags []
certRow f1232s11 on (rf1232 11) using bank tags []
theorem f1232 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [5,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [5,0,1,0] (.cons (f1232s0) (.cons (f1232s1) (.cons (f1232s2) (.cons (f1232s3) (.cons (f1232s4) (.cons (f1232s5) (.cons (f1232s6) (.cons (f1232s7) (.cons (f1232s8) (.cons (f1232s9) (.cons (f1232s10) (.cons (f1232s11) .nil))))))))))))
private abbrev rf1233 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [5,1,0,0]
certRow f1233s0 on (rf1233 0) using bank tags []
certRow f1233s1 on (rf1233 1) using bank tags [3,3]
certRow f1233s2 on (rf1233 2) using bank tags []
certRow f1233s3 on (rf1233 3) using bank tags [3]
certRow f1233s4 on (rf1233 4) using bank tags []
certRow f1233s5 on (rf1233 5) using bank tags []
certRow f1233s6 on (rf1233 6) using bank tags []
certRow f1233s7 on (rf1233 7) using bank tags []
certRow f1233s8 on (rf1233 8) using bank tags []
certRow f1233s9 on (rf1233 9) using bank tags []
certRow f1233s10 on (rf1233 10) using bank tags []
certRow f1233s11 on (rf1233 11) using bank tags []
theorem f1233 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [5,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [5,1,0,0] (.cons (f1233s0) (.cons (f1233s1) (.cons (f1233s2) (.cons (f1233s3) (.cons (f1233s4) (.cons (f1233s5) (.cons (f1233s6) (.cons (f1233s7) (.cons (f1233s8) (.cons (f1233s9) (.cons (f1233s10) (.cons (f1233s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
