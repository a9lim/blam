import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1083 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,2,1]
certRow f1083s0 on (rf1083 0) using bank tags []
certRow f1083s1 on (rf1083 1) using bank tags [3,3,3,3,3]
certRow f1083s2 on (rf1083 2) using bank tags [3,3]
certRow f1083s3 on (rf1083 3) using bank tags [3,3,3,3,3,3,3]
certRow f1083s4 on (rf1083 4) using bank tags [3,3,3,3,3]
certRow f1083s5 on (rf1083 5) using bank tags [3,3]
certRow f1083s6 on (rf1083 6) using bank tags [3,3,3,3]
certRow f1083s7 on (rf1083 7) using bank tags [3,3]
certRow f1083s8 on (rf1083 8) using bank tags []
certRow f1083s9 on (rf1083 9) using bank tags [3,3,3,3,3]
certRow f1083s10 on (rf1083 10) using bank tags [3]
certRow f1083s11 on (rf1083 11) using bank tags []
theorem f1083 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,2,1] (.cons (f1083s0) (.cons (f1083s1) (.cons (f1083s2) (.cons (f1083s3) (.cons (f1083s4) (.cons (f1083s5) (.cons (f1083s6) (.cons (f1083s7) (.cons (f1083s8) (.cons (f1083s9) (.cons (f1083s10) (.cons (f1083s11) .nil))))))))))))
private abbrev rf1084 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,3,0]
certRow f1084s0 on (rf1084 0) using bank tags []
certRow f1084s1 on (rf1084 1) using bank tags [3,3,3,3,3]
certRow f1084s2 on (rf1084 2) using bank tags [3,3]
certRow f1084s3 on (rf1084 3) using bank tags [3,3,3,3,3]
certRow f1084s4 on (rf1084 4) using bank tags [3,3,3,3,3]
certRow f1084s5 on (rf1084 5) using bank tags [3]
certRow f1084s6 on (rf1084 6) using bank tags []
certRow f1084s7 on (rf1084 7) using bank tags []
certRow f1084s8 on (rf1084 8) using bank tags []
certRow f1084s9 on (rf1084 9) using bank tags []
certRow f1084s10 on (rf1084 10) using bank tags [3,3,3,3,3]
certRow f1084s11 on (rf1084 11) using bank tags []
theorem f1084 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,3,0] (.cons (f1084s0) (.cons (f1084s1) (.cons (f1084s2) (.cons (f1084s3) (.cons (f1084s4) (.cons (f1084s5) (.cons (f1084s6) (.cons (f1084s7) (.cons (f1084s8) (.cons (f1084s9) (.cons (f1084s10) (.cons (f1084s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
