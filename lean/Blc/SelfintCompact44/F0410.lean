import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3427 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,0,0,3]
certRow f3427s0 on (rf3427 0) using bank tags []
certRow f3427s1 on (rf3427 1) using bank tags []
certRow f3427s2 on (rf3427 2) using bank tags []
certRow f3427s3 on (rf3427 3) using bank tags []
certRow f3427s4 on (rf3427 4) using bank tags []
certRow f3427s5 on (rf3427 5) using bank tags []
certRow f3427s6 on (rf3427 6) using bank tags []
certRow f3427s7 on (rf3427 7) using bank tags []
certRow f3427s8 on (rf3427 8) using bank tags []
certRow f3427s9 on (rf3427 9) using bank tags []
certRow f3427s10 on (rf3427 10) using bank tags []
certRow f3427s11 on (rf3427 11) using bank tags []
theorem f3427 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,0,0,3] (.cons (f3427s0) (.cons (f3427s1) (.cons (f3427s2) (.cons (f3427s3) (.cons (f3427s4) (.cons (f3427s5) (.cons (f3427s6) (.cons (f3427s7) (.cons (f3427s8) (.cons (f3427s9) (.cons (f3427s10) (.cons (f3427s11) .nil))))))))))))
private abbrev rf3428 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,0,1,2]
certRow f3428s0 on (rf3428 0) using bank tags []
certRow f3428s1 on (rf3428 1) using bank tags [3]
certRow f3428s2 on (rf3428 2) using bank tags []
certRow f3428s3 on (rf3428 3) using bank tags [3,3]
certRow f3428s4 on (rf3428 4) using bank tags [3]
certRow f3428s5 on (rf3428 5) using bank tags [3]
certRow f3428s6 on (rf3428 6) using bank tags []
certRow f3428s7 on (rf3428 7) using bank tags []
certRow f3428s8 on (rf3428 8) using bank tags []
certRow f3428s9 on (rf3428 9) using bank tags []
certRow f3428s10 on (rf3428 10) using bank tags []
certRow f3428s11 on (rf3428 11) using bank tags []
theorem f3428 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,0,1,2] (.cons (f3428s0) (.cons (f3428s1) (.cons (f3428s2) (.cons (f3428s3) (.cons (f3428s4) (.cons (f3428s5) (.cons (f3428s6) (.cons (f3428s7) (.cons (f3428s8) (.cons (f3428s9) (.cons (f3428s10) (.cons (f3428s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
