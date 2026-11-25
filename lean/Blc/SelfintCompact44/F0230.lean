import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1182 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,0,3,2]
certRow f1182s0 on (rf1182 0) using bank tags [3,3]
certRow f1182s1 on (rf1182 1) using bank tags [3,3,3,3]
certRow f1182s2 on (rf1182 2) using bank tags [3,3]
certRow f1182s3 on (rf1182 3) using bank tags [3,3,3,3]
certRow f1182s4 on (rf1182 4) using bank tags [3,3,3,3,3]
certRow f1182s5 on (rf1182 5) using bank tags [3,3,3]
certRow f1182s6 on (rf1182 6) using bank tags []
certRow f1182s7 on (rf1182 7) using bank tags [3,3,3]
certRow f1182s8 on (rf1182 8) using bank tags []
certRow f1182s9 on (rf1182 9) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1182s10 on (rf1182 10) using bank tags []
certRow f1182s11 on (rf1182 11) using bank tags [3,3]
theorem f1182 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,0,3,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,0,3,2] (.cons (f1182s0) (.cons (f1182s1) (.cons (f1182s2) (.cons (f1182s3) (.cons (f1182s4) (.cons (f1182s5) (.cons (f1182s6) (.cons (f1182s7) (.cons (f1182s8) (.cons (f1182s9) (.cons (f1182s10) (.cons (f1182s11) .nil))))))))))))
private abbrev rf1183 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,0,4,1]
certRow f1183s0 on (rf1183 0) using bank tags []
certRow f1183s1 on (rf1183 1) using bank tags [3,3,3,3]
certRow f1183s2 on (rf1183 2) using bank tags [3,3,3,3,3]
certRow f1183s3 on (rf1183 3) using bank tags [3,3]
certRow f1183s4 on (rf1183 4) using bank tags [3,3,3]
certRow f1183s5 on (rf1183 5) using bank tags [3,3]
certRow f1183s6 on (rf1183 6) using bank tags []
certRow f1183s7 on (rf1183 7) using bank tags [3,3,3]
certRow f1183s8 on (rf1183 8) using bank tags []
certRow f1183s9 on (rf1183 9) using bank tags [3,3,3,3,3,3]
certRow f1183s10 on (rf1183 10) using bank tags []
certRow f1183s11 on (rf1183 11) using bank tags [3,3]
theorem f1183 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,0,4,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,0,4,1] (.cons (f1183s0) (.cons (f1183s1) (.cons (f1183s2) (.cons (f1183s3) (.cons (f1183s4) (.cons (f1183s5) (.cons (f1183s6) (.cons (f1183s7) (.cons (f1183s8) (.cons (f1183s9) (.cons (f1183s10) (.cons (f1183s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
