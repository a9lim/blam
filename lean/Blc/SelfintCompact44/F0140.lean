import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf743 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,3,1]
certRow f743s0 on (rf743 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f743s1 on (rf743 1) using bank tags [3,3,3,3,3,28,28,28]
certRow f743s2 on (rf743 2) using bank tags [3,3,28,28,28,28,28,28]
certRow f743s3 on (rf743 3) using bank tags [3,3,3,3,3,28,28,3,3,28,28,28,28,3,3,3,28,32,31,1,1,82,6,22]
certRow f743s4 on (rf743 4) using bank tags [3,3,3,3,3]
certRow f743s5 on (rf743 5) using bank tags [3,3,3,28,28,3,28]
certRow f743s6 on (rf743 6) using bank tags [3,6]
certRow f743s7 on (rf743 7) using bank tags [3,28,3,28]
certRow f743s8 on (rf743 8) using bank tags [28,28]
certRow f743s9 on (rf743 9) using bank tags [28,28,28,28,28,3,3,28,28]
certRow f743s10 on (rf743 10) using bank tags [3,3,3,28,3,3,3,3,28,28]
certRow f743s11 on (rf743 11) using bank tags []
theorem f743 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,3,1] (.cons (f743s0) (.cons (f743s1) (.cons (f743s2) (.cons (f743s3) (.cons (f743s4) (.cons (f743s5) (.cons (f743s6) (.cons (f743s7) (.cons (f743s8) (.cons (f743s9) (.cons (f743s10) (.cons (f743s11) .nil))))))))))))
private abbrev rf744 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,4,0]
certRow f744s0 on (rf744 0) using bank tags []
certRow f744s1 on (rf744 1) using bank tags [28,28,28,28,28]
certRow f744s2 on (rf744 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f744s3 on (rf744 3) using bank tags [28,28,28,28,28,28]
certRow f744s4 on (rf744 4) using bank tags [28,28,28,28,28,6]
certRow f744s5 on (rf744 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f744s6 on (rf744 6) using bank tags []
certRow f744s7 on (rf744 7) using bank tags [13,13,13,13,1,6]
theorem f744 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,4,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,4,0] (.cons (f744s0) (.cons (f744s1) (.cons (f744s2) (.cons (f744s3) (.cons (f744s4) (.cons (f744s5) (.cons (f744s6) (.cons (f744s7) .nil))))))))
private abbrev rf745 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,0,3]
certRow f745s0 on (rf745 0) using bank tags [28,28,28,28]
certRow f745s1 on (rf745 1) using bank tags [3,3,3,3,3,28,28]
certRow f745s2 on (rf745 2) using bank tags [28,28,28,3,3,28,28,28,28,28,28,28]
certRow f745s3 on (rf745 3) using bank tags [3,3,3,28,3,3,28,28,28,28,28,28]
certRow f745s4 on (rf745 4) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow f745s5 on (rf745 5) using bank tags [3,3,28,28]
certRow f745s6 on (rf745 6) using bank tags [3,3,3,3,3]
certRow f745s7 on (rf745 7) using bank tags [3,3,1,1,77,19,19,6,19,19,6,6,26,1,1]
theorem f745 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,0,3] (.cons (f745s0) (.cons (f745s1) (.cons (f745s2) (.cons (f745s3) (.cons (f745s4) (.cons (f745s5) (.cons (f745s6) (.cons (f745s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
