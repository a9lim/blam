import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3445 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [2,1,0,0]
certRow f3445s0 on (rf3445 0) using bank tags []
certRow f3445s1 on (rf3445 1) using bank tags [3,3]
certRow f3445s2 on (rf3445 2) using bank tags []
certRow f3445s3 on (rf3445 3) using bank tags [3]
certRow f3445s4 on (rf3445 4) using bank tags []
certRow f3445s5 on (rf3445 5) using bank tags []
certRow f3445s6 on (rf3445 6) using bank tags []
certRow f3445s7 on (rf3445 7) using bank tags []
certRow f3445s8 on (rf3445 8) using bank tags []
certRow f3445s9 on (rf3445 9) using bank tags []
certRow f3445s10 on (rf3445 10) using bank tags []
certRow f3445s11 on (rf3445 11) using bank tags []
theorem f3445 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [2,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [2,1,0,0] (.cons (f3445s0) (.cons (f3445s1) (.cons (f3445s2) (.cons (f3445s3) (.cons (f3445s4) (.cons (f3445s5) (.cons (f3445s6) (.cons (f3445s7) (.cons (f3445s8) (.cons (f3445s9) (.cons (f3445s10) (.cons (f3445s11) .nil))))))))))))
private abbrev rf3446 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [3,0,0,0]
certRow f3446s0 on (rf3446 0) using bank tags []
certRow f3446s1 on (rf3446 1) using bank tags []
certRow f3446s2 on (rf3446 2) using bank tags []
certRow f3446s3 on (rf3446 3) using bank tags []
certRow f3446s4 on (rf3446 4) using bank tags []
certRow f3446s5 on (rf3446 5) using bank tags []
certRow f3446s6 on (rf3446 6) using bank tags []
certRow f3446s7 on (rf3446 7) using bank tags []
certRow f3446s8 on (rf3446 8) using bank tags []
certRow f3446s9 on (rf3446 9) using bank tags []
certRow f3446s10 on (rf3446 10) using bank tags []
certRow f3446s11 on (rf3446 11) using bank tags []
theorem f3446 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [3,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [3,0,0,0] (.cons (f3446s0) (.cons (f3446s1) (.cons (f3446s2) (.cons (f3446s3) (.cons (f3446s4) (.cons (f3446s5) (.cons (f3446s6) (.cons (f3446s7) (.cons (f3446s8) (.cons (f3446s9) (.cons (f3446s10) (.cons (f3446s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
