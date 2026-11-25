import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1056 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,1,1]
certRow f1056s0 on (rf1056 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow f1056s1 on (rf1056 1) using bank tags [3,3,3]
certRow f1056s2 on (rf1056 2) using bank tags []
certRow f1056s3 on (rf1056 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1056s4 on (rf1056 4) using bank tags [3,3,3,3,3]
certRow f1056s5 on (rf1056 5) using bank tags [3,3]
certRow f1056s6 on (rf1056 6) using bank tags [3,3,3,3,3,3]
certRow f1056s7 on (rf1056 7) using bank tags [3,3,3,3]
certRow f1056s8 on (rf1056 8) using bank tags []
certRow f1056s9 on (rf1056 9) using bank tags [3,3,3]
certRow f1056s10 on (rf1056 10) using bank tags [3,3,3,3,3]
certRow f1056s11 on (rf1056 11) using bank tags [3,3]
theorem f1056 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,1,1] (.cons (f1056s0) (.cons (f1056s1) (.cons (f1056s2) (.cons (f1056s3) (.cons (f1056s4) (.cons (f1056s5) (.cons (f1056s6) (.cons (f1056s7) (.cons (f1056s8) (.cons (f1056s9) (.cons (f1056s10) (.cons (f1056s11) .nil))))))))))))
private abbrev rf1057 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,2,0]
certRow f1057s0 on (rf1057 0) using bank tags [3,3,3]
certRow f1057s1 on (rf1057 1) using bank tags []
certRow f1057s2 on (rf1057 2) using bank tags []
certRow f1057s3 on (rf1057 3) using bank tags [3,3,3,3,3,3]
certRow f1057s4 on (rf1057 4) using bank tags []
certRow f1057s5 on (rf1057 5) using bank tags []
certRow f1057s6 on (rf1057 6) using bank tags []
certRow f1057s7 on (rf1057 7) using bank tags []
certRow f1057s8 on (rf1057 8) using bank tags [3,3,3,3]
certRow f1057s9 on (rf1057 9) using bank tags [3,3]
certRow f1057s10 on (rf1057 10) using bank tags [3,3,3,3,3,3]
certRow f1057s11 on (rf1057 11) using bank tags []
theorem f1057 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,2,0] (.cons (f1057s0) (.cons (f1057s1) (.cons (f1057s2) (.cons (f1057s3) (.cons (f1057s4) (.cons (f1057s5) (.cons (f1057s6) (.cons (f1057s7) (.cons (f1057s8) (.cons (f1057s9) (.cons (f1057s10) (.cons (f1057s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
