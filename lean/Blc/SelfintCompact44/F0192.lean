import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1071 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,0,2]
certRow f1071s0 on (rf1071 0) using bank tags [3,3,3,3,3]
certRow f1071s1 on (rf1071 1) using bank tags []
certRow f1071s2 on (rf1071 2) using bank tags []
certRow f1071s3 on (rf1071 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f1071s4 on (rf1071 4) using bank tags []
certRow f1071s5 on (rf1071 5) using bank tags [3,3]
certRow f1071s6 on (rf1071 6) using bank tags [3,3]
certRow f1071s7 on (rf1071 7) using bank tags [3,3]
certRow f1071s8 on (rf1071 8) using bank tags [3]
certRow f1071s9 on (rf1071 9) using bank tags [3,3,3,3,3]
certRow f1071s10 on (rf1071 10) using bank tags [3,3]
certRow f1071s11 on (rf1071 11) using bank tags []
theorem f1071 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,0,2] (.cons (f1071s0) (.cons (f1071s1) (.cons (f1071s2) (.cons (f1071s3) (.cons (f1071s4) (.cons (f1071s5) (.cons (f1071s6) (.cons (f1071s7) (.cons (f1071s8) (.cons (f1071s9) (.cons (f1071s10) (.cons (f1071s11) .nil))))))))))))
private abbrev rf1072 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,1,1]
certRow f1072s0 on (rf1072 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1072s1 on (rf1072 1) using bank tags [3,3,3,3,3]
certRow f1072s2 on (rf1072 2) using bank tags [3,3]
certRow f1072s3 on (rf1072 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1072s4 on (rf1072 4) using bank tags [3,3,3,3,3]
certRow f1072s5 on (rf1072 5) using bank tags [3,3,3]
certRow f1072s6 on (rf1072 6) using bank tags [3,3,3,3,3,3,3]
certRow f1072s7 on (rf1072 7) using bank tags [3,3,3,3,3,3]
certRow f1072s8 on (rf1072 8) using bank tags []
certRow f1072s9 on (rf1072 9) using bank tags [3,3,3,3,3]
certRow f1072s10 on (rf1072 10) using bank tags [3,3,3,3,3]
certRow f1072s11 on (rf1072 11) using bank tags []
theorem f1072 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,1,1] (.cons (f1072s0) (.cons (f1072s1) (.cons (f1072s2) (.cons (f1072s3) (.cons (f1072s4) (.cons (f1072s5) (.cons (f1072s6) (.cons (f1072s7) (.cons (f1072s8) (.cons (f1072s9) (.cons (f1072s10) (.cons (f1072s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
