import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1210 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,2,1,1]
certRow f1210s0 on (rf1210 0) using bank tags []
certRow f1210s1 on (rf1210 1) using bank tags [3]
certRow f1210s2 on (rf1210 2) using bank tags [3,3,3,3,3]
certRow f1210s3 on (rf1210 3) using bank tags [3]
certRow f1210s4 on (rf1210 4) using bank tags [3]
certRow f1210s5 on (rf1210 5) using bank tags [3,3]
certRow f1210s6 on (rf1210 6) using bank tags []
certRow f1210s7 on (rf1210 7) using bank tags []
certRow f1210s8 on (rf1210 8) using bank tags []
certRow f1210s9 on (rf1210 9) using bank tags [3,3,3,3,3]
certRow f1210s10 on (rf1210 10) using bank tags [3]
certRow f1210s11 on (rf1210 11) using bank tags [3]
theorem f1210 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,2,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,2,1,1] (.cons (f1210s0) (.cons (f1210s1) (.cons (f1210s2) (.cons (f1210s3) (.cons (f1210s4) (.cons (f1210s5) (.cons (f1210s6) (.cons (f1210s7) (.cons (f1210s8) (.cons (f1210s9) (.cons (f1210s10) (.cons (f1210s11) .nil))))))))))))
private abbrev rf1211 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,2,2,0]
certRow f1211s0 on (rf1211 0) using bank tags [3]
certRow f1211s1 on (rf1211 1) using bank tags []
certRow f1211s2 on (rf1211 2) using bank tags []
certRow f1211s3 on (rf1211 3) using bank tags [3]
certRow f1211s4 on (rf1211 4) using bank tags []
certRow f1211s5 on (rf1211 5) using bank tags [3]
certRow f1211s6 on (rf1211 6) using bank tags []
certRow f1211s7 on (rf1211 7) using bank tags []
certRow f1211s8 on (rf1211 8) using bank tags []
certRow f1211s9 on (rf1211 9) using bank tags [3]
certRow f1211s10 on (rf1211 10) using bank tags []
certRow f1211s11 on (rf1211 11) using bank tags []
theorem f1211 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,2,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,2,2,0] (.cons (f1211s0) (.cons (f1211s1) (.cons (f1211s2) (.cons (f1211s3) (.cons (f1211s4) (.cons (f1211s5) (.cons (f1211s6) (.cons (f1211s7) (.cons (f1211s8) (.cons (f1211s9) (.cons (f1211s10) (.cons (f1211s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
