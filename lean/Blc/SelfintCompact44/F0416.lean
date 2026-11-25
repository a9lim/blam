import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3443 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [2,0,0,1]
certRow f3443s0 on (rf3443 0) using bank tags []
certRow f3443s1 on (rf3443 1) using bank tags [3,3]
certRow f3443s2 on (rf3443 2) using bank tags [3]
certRow f3443s3 on (rf3443 3) using bank tags [3,3]
certRow f3443s4 on (rf3443 4) using bank tags []
certRow f3443s5 on (rf3443 5) using bank tags []
certRow f3443s6 on (rf3443 6) using bank tags []
certRow f3443s7 on (rf3443 7) using bank tags []
certRow f3443s8 on (rf3443 8) using bank tags []
certRow f3443s9 on (rf3443 9) using bank tags []
certRow f3443s10 on (rf3443 10) using bank tags []
certRow f3443s11 on (rf3443 11) using bank tags []
theorem f3443 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [2,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [2,0,0,1] (.cons (f3443s0) (.cons (f3443s1) (.cons (f3443s2) (.cons (f3443s3) (.cons (f3443s4) (.cons (f3443s5) (.cons (f3443s6) (.cons (f3443s7) (.cons (f3443s8) (.cons (f3443s9) (.cons (f3443s10) (.cons (f3443s11) .nil))))))))))))
private abbrev rf3444 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [2,0,1,0]
certRow f3444s0 on (rf3444 0) using bank tags []
certRow f3444s1 on (rf3444 1) using bank tags [3,3]
certRow f3444s2 on (rf3444 2) using bank tags [3]
certRow f3444s3 on (rf3444 3) using bank tags [3,3]
certRow f3444s4 on (rf3444 4) using bank tags []
certRow f3444s5 on (rf3444 5) using bank tags []
certRow f3444s6 on (rf3444 6) using bank tags []
certRow f3444s7 on (rf3444 7) using bank tags []
certRow f3444s8 on (rf3444 8) using bank tags []
certRow f3444s9 on (rf3444 9) using bank tags []
certRow f3444s10 on (rf3444 10) using bank tags []
certRow f3444s11 on (rf3444 11) using bank tags []
theorem f3444 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [2,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [2,0,1,0] (.cons (f3444s0) (.cons (f3444s1) (.cons (f3444s2) (.cons (f3444s3) (.cons (f3444s4) (.cons (f3444s5) (.cons (f3444s6) (.cons (f3444s7) (.cons (f3444s8) (.cons (f3444s9) (.cons (f3444s10) (.cons (f3444s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
