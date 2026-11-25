import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1050 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,4,0]
certRow f1050s0 on (rf1050 0) using bank tags []
certRow f1050s1 on (rf1050 1) using bank tags []
certRow f1050s2 on (rf1050 2) using bank tags []
certRow f1050s3 on (rf1050 3) using bank tags []
certRow f1050s4 on (rf1050 4) using bank tags []
certRow f1050s5 on (rf1050 5) using bank tags []
certRow f1050s6 on (rf1050 6) using bank tags []
certRow f1050s7 on (rf1050 7) using bank tags []
certRow f1050s8 on (rf1050 8) using bank tags []
certRow f1050s9 on (rf1050 9) using bank tags []
certRow f1050s10 on (rf1050 10) using bank tags []
certRow f1050s11 on (rf1050 11) using bank tags []
theorem f1050 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,4,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,4,0] (.cons (f1050s0) (.cons (f1050s1) (.cons (f1050s2) (.cons (f1050s3) (.cons (f1050s4) (.cons (f1050s5) (.cons (f1050s6) (.cons (f1050s7) (.cons (f1050s8) (.cons (f1050s9) (.cons (f1050s10) (.cons (f1050s11) .nil))))))))))))
private abbrev rf1051 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,0,3]
certRow f1051s0 on (rf1051 0) using bank tags [3,3,3,3,3,3,3]
certRow f1051s1 on (rf1051 1) using bank tags [3,3,3,3,3]
certRow f1051s2 on (rf1051 2) using bank tags [3,3]
certRow f1051s3 on (rf1051 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1051s4 on (rf1051 4) using bank tags [3,3,3,3,3]
certRow f1051s5 on (rf1051 5) using bank tags [3,3]
certRow f1051s6 on (rf1051 6) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1051s7 on (rf1051 7) using bank tags [3,3]
certRow f1051s8 on (rf1051 8) using bank tags []
certRow f1051s9 on (rf1051 9) using bank tags [3,3,3,3,3]
certRow f1051s10 on (rf1051 10) using bank tags [3,3]
certRow f1051s11 on (rf1051 11) using bank tags [3,3,3,3]
theorem f1051 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,0,3] (.cons (f1051s0) (.cons (f1051s1) (.cons (f1051s2) (.cons (f1051s3) (.cons (f1051s4) (.cons (f1051s5) (.cons (f1051s6) (.cons (f1051s7) (.cons (f1051s8) (.cons (f1051s9) (.cons (f1051s10) (.cons (f1051s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
