import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1218 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,0,3,0]
certRow f1218s0 on (rf1218 0) using bank tags []
certRow f1218s1 on (rf1218 1) using bank tags []
certRow f1218s2 on (rf1218 2) using bank tags [3,3]
certRow f1218s3 on (rf1218 3) using bank tags []
certRow f1218s4 on (rf1218 4) using bank tags []
certRow f1218s5 on (rf1218 5) using bank tags [3,3]
certRow f1218s6 on (rf1218 6) using bank tags []
certRow f1218s7 on (rf1218 7) using bank tags []
certRow f1218s8 on (rf1218 8) using bank tags []
certRow f1218s9 on (rf1218 9) using bank tags [3,3]
certRow f1218s10 on (rf1218 10) using bank tags []
certRow f1218s11 on (rf1218 11) using bank tags []
theorem f1218 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,0,3,0] (.cons (f1218s0) (.cons (f1218s1) (.cons (f1218s2) (.cons (f1218s3) (.cons (f1218s4) (.cons (f1218s5) (.cons (f1218s6) (.cons (f1218s7) (.cons (f1218s8) (.cons (f1218s9) (.cons (f1218s10) (.cons (f1218s11) .nil))))))))))))
private abbrev rf1219 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,1,0,2]
certRow f1219s0 on (rf1219 0) using bank tags [3]
certRow f1219s1 on (rf1219 1) using bank tags [3,3,3]
certRow f1219s2 on (rf1219 2) using bank tags [3]
certRow f1219s3 on (rf1219 3) using bank tags [3]
certRow f1219s4 on (rf1219 4) using bank tags [3]
certRow f1219s5 on (rf1219 5) using bank tags []
certRow f1219s6 on (rf1219 6) using bank tags []
certRow f1219s7 on (rf1219 7) using bank tags []
certRow f1219s8 on (rf1219 8) using bank tags []
certRow f1219s9 on (rf1219 9) using bank tags [3,3,3,3]
certRow f1219s10 on (rf1219 10) using bank tags []
certRow f1219s11 on (rf1219 11) using bank tags [3]
theorem f1219 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,1,0,2] (.cons (f1219s0) (.cons (f1219s1) (.cons (f1219s2) (.cons (f1219s3) (.cons (f1219s4) (.cons (f1219s5) (.cons (f1219s6) (.cons (f1219s7) (.cons (f1219s8) (.cons (f1219s9) (.cons (f1219s10) (.cons (f1219s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
