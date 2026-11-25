import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1099 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,2,1,0,0]
certRow f1099s0 on (rf1099 0) using bank tags []
certRow f1099s1 on (rf1099 1) using bank tags [3,3,3,3,3]
certRow f1099s2 on (rf1099 2) using bank tags [3,3]
certRow f1099s3 on (rf1099 3) using bank tags [3,3]
certRow f1099s4 on (rf1099 4) using bank tags [3,3,3]
certRow f1099s5 on (rf1099 5) using bank tags []
certRow f1099s6 on (rf1099 6) using bank tags [3,3,3]
certRow f1099s7 on (rf1099 7) using bank tags [3]
certRow f1099s8 on (rf1099 8) using bank tags [3]
certRow f1099s9 on (rf1099 9) using bank tags []
certRow f1099s10 on (rf1099 10) using bank tags [3,3]
certRow f1099s11 on (rf1099 11) using bank tags []
theorem f1099 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,2,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,2,1,0,0] (.cons (f1099s0) (.cons (f1099s1) (.cons (f1099s2) (.cons (f1099s3) (.cons (f1099s4) (.cons (f1099s5) (.cons (f1099s6) (.cons (f1099s7) (.cons (f1099s8) (.cons (f1099s9) (.cons (f1099s10) (.cons (f1099s11) .nil))))))))))))
private abbrev rf1100 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,3,0,0,0]
certRow f1100s0 on (rf1100 0) using bank tags []
certRow f1100s1 on (rf1100 1) using bank tags [3,3,3,3,3]
certRow f1100s2 on (rf1100 2) using bank tags []
certRow f1100s3 on (rf1100 3) using bank tags [3]
certRow f1100s4 on (rf1100 4) using bank tags [3,3,3]
certRow f1100s5 on (rf1100 5) using bank tags []
certRow f1100s6 on (rf1100 6) using bank tags []
certRow f1100s7 on (rf1100 7) using bank tags []
certRow f1100s8 on (rf1100 8) using bank tags []
certRow f1100s9 on (rf1100 9) using bank tags []
certRow f1100s10 on (rf1100 10) using bank tags []
certRow f1100s11 on (rf1100 11) using bank tags []
theorem f1100 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,3,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,3,0,0,0] (.cons (f1100s0) (.cons (f1100s1) (.cons (f1100s2) (.cons (f1100s3) (.cons (f1100s4) (.cons (f1100s5) (.cons (f1100s6) (.cons (f1100s7) (.cons (f1100s8) (.cons (f1100s9) (.cons (f1100s10) (.cons (f1100s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
