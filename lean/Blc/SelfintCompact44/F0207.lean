import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1105 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,0,1,1,0]
certRow f1105s0 on (rf1105 0) using bank tags []
certRow f1105s1 on (rf1105 1) using bank tags [3,3,3,3,3]
certRow f1105s2 on (rf1105 2) using bank tags [3,3]
certRow f1105s3 on (rf1105 3) using bank tags [3,3,3,3,3,3,3]
certRow f1105s4 on (rf1105 4) using bank tags [3,3,3,3,3]
certRow f1105s5 on (rf1105 5) using bank tags [3]
certRow f1105s6 on (rf1105 6) using bank tags []
certRow f1105s7 on (rf1105 7) using bank tags []
certRow f1105s8 on (rf1105 8) using bank tags [3,3]
certRow f1105s9 on (rf1105 9) using bank tags []
certRow f1105s10 on (rf1105 10) using bank tags [3,3,3,3,3,3,3,3]
certRow f1105s11 on (rf1105 11) using bank tags []
theorem f1105 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,0,1,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,0,1,1,0] (.cons (f1105s0) (.cons (f1105s1) (.cons (f1105s2) (.cons (f1105s3) (.cons (f1105s4) (.cons (f1105s5) (.cons (f1105s6) (.cons (f1105s7) (.cons (f1105s8) (.cons (f1105s9) (.cons (f1105s10) (.cons (f1105s11) .nil))))))))))))
private abbrev rf1106 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,0,2,0,0]
certRow f1106s0 on (rf1106 0) using bank tags []
certRow f1106s1 on (rf1106 1) using bank tags []
certRow f1106s2 on (rf1106 2) using bank tags []
certRow f1106s3 on (rf1106 3) using bank tags [3,3]
certRow f1106s4 on (rf1106 4) using bank tags []
certRow f1106s5 on (rf1106 5) using bank tags []
certRow f1106s6 on (rf1106 6) using bank tags []
certRow f1106s7 on (rf1106 7) using bank tags []
certRow f1106s8 on (rf1106 8) using bank tags [3,3]
certRow f1106s9 on (rf1106 9) using bank tags []
certRow f1106s10 on (rf1106 10) using bank tags [3,3,3]
certRow f1106s11 on (rf1106 11) using bank tags []
theorem f1106 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,0,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,0,2,0,0] (.cons (f1106s0) (.cons (f1106s1) (.cons (f1106s2) (.cons (f1106s3) (.cons (f1106s4) (.cons (f1106s5) (.cons (f1106s6) (.cons (f1106s7) (.cons (f1106s8) (.cons (f1106s9) (.cons (f1106s10) (.cons (f1106s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
