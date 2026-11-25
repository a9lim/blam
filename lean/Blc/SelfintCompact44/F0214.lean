import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1143 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [2,0,2,0]) using bank tags [3,3,3,48,48,48]
certRow f1144 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [2,1,0,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,48,48,48,48,48,48,48,48,48,48]
certRow f1145 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [2,1,1,0]) using bank tags [3,3,3,3,3,3,3,48,48,48,48,48,48,48]
certRow f1146 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [2,2,0,0]) using bank tags []
certRow f1147 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [3,0,0,1]) using bank tags [3,3,3,3,3,48,48,48,48,48]
certRow f1148 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [3,0,1,0]) using bank tags [3,3,3,3,3,48,48,48,48,48]
certRow f1149 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [3,1,0,0]) using bank tags [3,3,3,48,48,48]
certRow f1150 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [4,0,0,0]) using bank tags []
private abbrev rf1151 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,0,0,6]
certRow f1151s0 on (rf1151 0) using bank tags []
certRow f1151s1 on (rf1151 1) using bank tags []
certRow f1151s2 on (rf1151 2) using bank tags []
certRow f1151s3 on (rf1151 3) using bank tags []
certRow f1151s4 on (rf1151 4) using bank tags []
certRow f1151s5 on (rf1151 5) using bank tags []
certRow f1151s6 on (rf1151 6) using bank tags []
certRow f1151s7 on (rf1151 7) using bank tags []
certRow f1151s8 on (rf1151 8) using bank tags []
certRow f1151s9 on (rf1151 9) using bank tags []
certRow f1151s10 on (rf1151 10) using bank tags []
certRow f1151s11 on (rf1151 11) using bank tags []
theorem f1151 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,0,0,6]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,0,0,6] (.cons (f1151s0) (.cons (f1151s1) (.cons (f1151s2) (.cons (f1151s3) (.cons (f1151s4) (.cons (f1151s5) (.cons (f1151s6) (.cons (f1151s7) (.cons (f1151s8) (.cons (f1151s9) (.cons (f1151s10) (.cons (f1151s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
