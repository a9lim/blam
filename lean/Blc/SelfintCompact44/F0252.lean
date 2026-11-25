import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1226 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [4,0,1,1]
certRow f1226s0 on (rf1226 0) using bank tags []
certRow f1226s1 on (rf1226 1) using bank tags [3,3,3,3]
certRow f1226s2 on (rf1226 2) using bank tags [3,3,3]
certRow f1226s3 on (rf1226 3) using bank tags [3,3]
certRow f1226s4 on (rf1226 4) using bank tags []
certRow f1226s5 on (rf1226 5) using bank tags []
certRow f1226s6 on (rf1226 6) using bank tags []
certRow f1226s7 on (rf1226 7) using bank tags []
certRow f1226s8 on (rf1226 8) using bank tags []
certRow f1226s9 on (rf1226 9) using bank tags [3,3,3]
certRow f1226s10 on (rf1226 10) using bank tags []
certRow f1226s11 on (rf1226 11) using bank tags [3]
theorem f1226 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [4,0,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [4,0,1,1] (.cons (f1226s0) (.cons (f1226s1) (.cons (f1226s2) (.cons (f1226s3) (.cons (f1226s4) (.cons (f1226s5) (.cons (f1226s6) (.cons (f1226s7) (.cons (f1226s8) (.cons (f1226s9) (.cons (f1226s10) (.cons (f1226s11) .nil))))))))))))
private abbrev rf1227 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [4,0,2,0]
certRow f1227s0 on (rf1227 0) using bank tags []
certRow f1227s1 on (rf1227 1) using bank tags [3,3]
certRow f1227s2 on (rf1227 2) using bank tags [3,3,3]
certRow f1227s3 on (rf1227 3) using bank tags [3,3]
certRow f1227s4 on (rf1227 4) using bank tags []
certRow f1227s5 on (rf1227 5) using bank tags []
certRow f1227s6 on (rf1227 6) using bank tags []
certRow f1227s7 on (rf1227 7) using bank tags []
certRow f1227s8 on (rf1227 8) using bank tags []
certRow f1227s9 on (rf1227 9) using bank tags [3]
certRow f1227s10 on (rf1227 10) using bank tags []
certRow f1227s11 on (rf1227 11) using bank tags []
theorem f1227 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [4,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [4,0,2,0] (.cons (f1227s0) (.cons (f1227s1) (.cons (f1227s2) (.cons (f1227s3) (.cons (f1227s4) (.cons (f1227s5) (.cons (f1227s6) (.cons (f1227s7) (.cons (f1227s8) (.cons (f1227s9) (.cons (f1227s10) (.cons (f1227s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
