import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1192 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,2,2,1]
certRow f1192s0 on (rf1192 0) using bank tags []
certRow f1192s1 on (rf1192 1) using bank tags [3]
certRow f1192s2 on (rf1192 2) using bank tags [3,3,3]
certRow f1192s3 on (rf1192 3) using bank tags []
certRow f1192s4 on (rf1192 4) using bank tags [3,3]
certRow f1192s5 on (rf1192 5) using bank tags [3,3,3]
certRow f1192s6 on (rf1192 6) using bank tags []
certRow f1192s7 on (rf1192 7) using bank tags [3]
certRow f1192s8 on (rf1192 8) using bank tags []
certRow f1192s9 on (rf1192 9) using bank tags [3,3,3,3,3]
certRow f1192s10 on (rf1192 10) using bank tags [3]
certRow f1192s11 on (rf1192 11) using bank tags [3,3]
theorem f1192 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,2,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,2,2,1] (.cons (f1192s0) (.cons (f1192s1) (.cons (f1192s2) (.cons (f1192s3) (.cons (f1192s4) (.cons (f1192s5) (.cons (f1192s6) (.cons (f1192s7) (.cons (f1192s8) (.cons (f1192s9) (.cons (f1192s10) (.cons (f1192s11) .nil))))))))))))
private abbrev rf1193 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,2,3,0]
certRow f1193s0 on (rf1193 0) using bank tags [3]
certRow f1193s1 on (rf1193 1) using bank tags []
certRow f1193s2 on (rf1193 2) using bank tags [3]
certRow f1193s3 on (rf1193 3) using bank tags [3,3]
certRow f1193s4 on (rf1193 4) using bank tags [3,3]
certRow f1193s5 on (rf1193 5) using bank tags [3,3]
certRow f1193s6 on (rf1193 6) using bank tags []
certRow f1193s7 on (rf1193 7) using bank tags []
certRow f1193s8 on (rf1193 8) using bank tags []
certRow f1193s9 on (rf1193 9) using bank tags [3,3]
certRow f1193s10 on (rf1193 10) using bank tags []
certRow f1193s11 on (rf1193 11) using bank tags []
theorem f1193 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,2,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,2,3,0] (.cons (f1193s0) (.cons (f1193s1) (.cons (f1193s2) (.cons (f1193s3) (.cons (f1193s4) (.cons (f1193s5) (.cons (f1193s6) (.cons (f1193s7) (.cons (f1193s8) (.cons (f1193s9) (.cons (f1193s10) (.cons (f1193s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
