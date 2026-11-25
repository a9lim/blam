import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf420 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,2,1]
certRow f420s0 on (rf420 0) using bank tags []
certRow f420s1 on (rf420 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow f420s2 on (rf420 2) using bank tags [3,3,3,3,3]
certRow f420s3 on (rf420 3) using bank tags [3,3,3,3,3,3,28,28,28,28,28]
certRow f420s4 on (rf420 4) using bank tags [3,3,3,3,3]
certRow f420s5 on (rf420 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f420s6 on (rf420 6) using bank tags []
certRow f420s7 on (rf420 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f420s8 on (rf420 8) using bank tags []
certRow f420s9 on (rf420 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f420s10 on (rf420 10) using bank tags []
certRow f420s11 on (rf420 11) using bank tags [3,3,3,3,28,28,28,28,28]
theorem f420 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,2,1] (.cons (f420s0) (.cons (f420s1) (.cons (f420s2) (.cons (f420s3) (.cons (f420s4) (.cons (f420s5) (.cons (f420s6) (.cons (f420s7) (.cons (f420s8) (.cons (f420s9) (.cons (f420s10) (.cons (f420s11) .nil))))))))))))
private abbrev rf421 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,3,0]
certRow f421s0 on (rf421 0) using bank tags []
certRow f421s1 on (rf421 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f421s2 on (rf421 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f421s3 on (rf421 3) using bank tags [28,28,28,28,28,28,28]
certRow f421s4 on (rf421 4) using bank tags [28,28,28,28,28]
certRow f421s5 on (rf421 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f421s6 on (rf421 6) using bank tags []
certRow f421s7 on (rf421 7) using bank tags []
theorem f421 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,3,0] (.cons (f421s0) (.cons (f421s1) (.cons (f421s2) (.cons (f421s3) (.cons (f421s4) (.cons (f421s5) (.cons (f421s6) (.cons (f421s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
