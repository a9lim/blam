import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1064 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,3,0]
certRow f1064s0 on (rf1064 0) using bank tags [3,3,3]
certRow f1064s1 on (rf1064 1) using bank tags [3,3,3,3,3]
certRow f1064s2 on (rf1064 2) using bank tags [3,3]
certRow f1064s3 on (rf1064 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1064s4 on (rf1064 4) using bank tags [3,3,3,3,3]
certRow f1064s5 on (rf1064 5) using bank tags [3]
certRow f1064s6 on (rf1064 6) using bank tags [3,3,3,3,3]
certRow f1064s7 on (rf1064 7) using bank tags [3,3]
certRow f1064s8 on (rf1064 8) using bank tags [3,3,3,3]
certRow f1064s9 on (rf1064 9) using bank tags [3,3]
certRow f1064s10 on (rf1064 10) using bank tags [3,3,3,3,3]
certRow f1064s11 on (rf1064 11) using bank tags []
theorem f1064 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,3,0] (.cons (f1064s0) (.cons (f1064s1) (.cons (f1064s2) (.cons (f1064s3) (.cons (f1064s4) (.cons (f1064s5) (.cons (f1064s6) (.cons (f1064s7) (.cons (f1064s8) (.cons (f1064s9) (.cons (f1064s10) (.cons (f1064s11) .nil))))))))))))
private abbrev rf1065 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,1,0,2]
certRow f1065s0 on (rf1065 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1065s1 on (rf1065 1) using bank tags [3,3,3,3,3,3,3]
certRow f1065s2 on (rf1065 2) using bank tags [3,3]
certRow f1065s3 on (rf1065 3) using bank tags [3,3,3,3,3,3]
certRow f1065s4 on (rf1065 4) using bank tags [3,3,3,3,3]
certRow f1065s5 on (rf1065 5) using bank tags []
certRow f1065s6 on (rf1065 6) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1065s7 on (rf1065 7) using bank tags []
certRow f1065s8 on (rf1065 8) using bank tags [3,3,3,3,3]
certRow f1065s9 on (rf1065 9) using bank tags []
certRow f1065s10 on (rf1065 10) using bank tags [3,3,3,3,3,3,3]
certRow f1065s11 on (rf1065 11) using bank tags []
theorem f1065 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,1,0,2] (.cons (f1065s0) (.cons (f1065s1) (.cons (f1065s2) (.cons (f1065s3) (.cons (f1065s4) (.cons (f1065s5) (.cons (f1065s6) (.cons (f1065s7) (.cons (f1065s8) (.cons (f1065s9) (.cons (f1065s10) (.cons (f1065s11) .nil))))))))))))
certRow f1066 on (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
