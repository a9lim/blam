import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1208 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,1,3,0]
certRow f1208s0 on (rf1208 0) using bank tags [3]
certRow f1208s1 on (rf1208 1) using bank tags []
certRow f1208s2 on (rf1208 2) using bank tags [3]
certRow f1208s3 on (rf1208 3) using bank tags [3,3]
certRow f1208s4 on (rf1208 4) using bank tags [3]
certRow f1208s5 on (rf1208 5) using bank tags [3,3]
certRow f1208s6 on (rf1208 6) using bank tags []
certRow f1208s7 on (rf1208 7) using bank tags []
certRow f1208s8 on (rf1208 8) using bank tags []
certRow f1208s9 on (rf1208 9) using bank tags [3,3]
certRow f1208s10 on (rf1208 10) using bank tags []
certRow f1208s11 on (rf1208 11) using bank tags []
theorem f1208 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,1,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,1,3,0] (.cons (f1208s0) (.cons (f1208s1) (.cons (f1208s2) (.cons (f1208s3) (.cons (f1208s4) (.cons (f1208s5) (.cons (f1208s6) (.cons (f1208s7) (.cons (f1208s8) (.cons (f1208s9) (.cons (f1208s10) (.cons (f1208s11) .nil))))))))))))
private abbrev rf1209 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,2,0,2]
certRow f1209s0 on (rf1209 0) using bank tags [3]
certRow f1209s1 on (rf1209 1) using bank tags [3,3,3]
certRow f1209s2 on (rf1209 2) using bank tags [3,3]
certRow f1209s3 on (rf1209 3) using bank tags []
certRow f1209s4 on (rf1209 4) using bank tags [3]
certRow f1209s5 on (rf1209 5) using bank tags []
certRow f1209s6 on (rf1209 6) using bank tags []
certRow f1209s7 on (rf1209 7) using bank tags []
certRow f1209s8 on (rf1209 8) using bank tags []
certRow f1209s9 on (rf1209 9) using bank tags [3,3]
certRow f1209s10 on (rf1209 10) using bank tags [3]
certRow f1209s11 on (rf1209 11) using bank tags [3]
theorem f1209 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,2,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,2,0,2] (.cons (f1209s0) (.cons (f1209s1) (.cons (f1209s2) (.cons (f1209s3) (.cons (f1209s4) (.cons (f1209s5) (.cons (f1209s6) (.cons (f1209s7) (.cons (f1209s8) (.cons (f1209s9) (.cons (f1209s10) (.cons (f1209s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
