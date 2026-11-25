import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1178 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,6,0,0]
certRow f1178s0 on (rf1178 0) using bank tags []
certRow f1178s1 on (rf1178 1) using bank tags []
certRow f1178s2 on (rf1178 2) using bank tags []
certRow f1178s3 on (rf1178 3) using bank tags []
certRow f1178s4 on (rf1178 4) using bank tags []
certRow f1178s5 on (rf1178 5) using bank tags []
certRow f1178s6 on (rf1178 6) using bank tags []
certRow f1178s7 on (rf1178 7) using bank tags []
certRow f1178s8 on (rf1178 8) using bank tags []
certRow f1178s9 on (rf1178 9) using bank tags []
certRow f1178s10 on (rf1178 10) using bank tags []
certRow f1178s11 on (rf1178 11) using bank tags []
theorem f1178 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,6,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,6,0,0] (.cons (f1178s0) (.cons (f1178s1) (.cons (f1178s2) (.cons (f1178s3) (.cons (f1178s4) (.cons (f1178s5) (.cons (f1178s6) (.cons (f1178s7) (.cons (f1178s8) (.cons (f1178s9) (.cons (f1178s10) (.cons (f1178s11) .nil))))))))))))
private abbrev rf1179 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,0,0,5]
certRow f1179s0 on (rf1179 0) using bank tags [3,3,3]
certRow f1179s1 on (rf1179 1) using bank tags [3,3,3,3]
certRow f1179s2 on (rf1179 2) using bank tags [3]
certRow f1179s3 on (rf1179 3) using bank tags [3,3,3,3]
certRow f1179s4 on (rf1179 4) using bank tags [3,3]
certRow f1179s5 on (rf1179 5) using bank tags []
certRow f1179s6 on (rf1179 6) using bank tags []
certRow f1179s7 on (rf1179 7) using bank tags []
certRow f1179s8 on (rf1179 8) using bank tags [3]
certRow f1179s9 on (rf1179 9) using bank tags [3,3,3,3]
certRow f1179s10 on (rf1179 10) using bank tags []
certRow f1179s11 on (rf1179 11) using bank tags [3]
theorem f1179 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,0,0,5]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,0,0,5] (.cons (f1179s0) (.cons (f1179s1) (.cons (f1179s2) (.cons (f1179s3) (.cons (f1179s4) (.cons (f1179s5) (.cons (f1179s6) (.cons (f1179s7) (.cons (f1179s8) (.cons (f1179s9) (.cons (f1179s10) (.cons (f1179s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
