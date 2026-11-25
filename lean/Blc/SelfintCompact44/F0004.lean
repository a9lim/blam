import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf20 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,0,1,2]
certRow f20s0 on (rf20 0) using bank tags []
certRow f20s1 on (rf20 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1]
certRow f20s2 on (rf20 2) using bank tags [1,1,1,1,1]
certRow f20s3 on (rf20 3) using bank tags [1,1,1,1,1,1,1,1,35,35,35,35,35,19,6,35,35,19,6,19,19,19,19,19,19]
certRow f20s4 on (rf20 4) using bank tags [1,1,1]
certRow f20s5 on (rf20 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f20s6 on (rf20 6) using bank tags []
certRow f20s7 on (rf20 7) using bank tags [1,1,1,1,14,1,1,1,14,1,1,1,1,1,1,1,1]
theorem f20 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,0,1,2] (.cons (f20s0) (.cons (f20s1) (.cons (f20s2) (.cons (f20s3) (.cons (f20s4) (.cons (f20s5) (.cons (f20s6) (.cons (f20s7) .nil))))))))
private abbrev rf21 (i : Nat) := Split43.four 12 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,0,2,1]
certRow f21s0 on (rf21 0) using bank tags [1,1,1,1,1]
certRow f21s1 on (rf21 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f21s2 on (rf21 2) using bank tags [1,1,1,1,1]
certRow f21s3 on (rf21 3) using bank tags [1,1,1,1,35,35,35,35,35,19,19,6,19,6,6,19,6,19,19,19,19,19,19]
certRow f21s4 on (rf21 4) using bank tags [1,1,1,1,1]
certRow f21s5 on (rf21 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f21s6 on (rf21 6) using bank tags []
certRow f21s7 on (rf21 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f21s8 on (rf21 8) using bank tags []
certRow f21s9 on (rf21 9) using bank tags []
certRow f21s10 on (rf21 10) using bank tags []
certRow f21s11 on (rf21 11) using bank tags [1,1,1,1,1]
theorem f21 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,0,2,1] (.cons (f21s0) (.cons (f21s1) (.cons (f21s2) (.cons (f21s3) (.cons (f21s4) (.cons (f21s5) (.cons (f21s6) (.cons (f21s7) (.cons (f21s8) (.cons (f21s9) (.cons (f21s10) (.cons (f21s11) .nil))))))))))))
private abbrev rf22 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,1,0,2]
certRow f22s0 on (rf22 0) using bank tags []
certRow f22s1 on (rf22 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f22s2 on (rf22 2) using bank tags [1,1,1,1,1]
certRow f22s3 on (rf22 3) using bank tags [1,1,1,1,1,1,1,1,1,35,35,19,35,19,19,19,19,19,35,19,19,19,19,19,19,19,19,19]
certRow f22s4 on (rf22 4) using bank tags [1,1,1,1,1]
certRow f22s5 on (rf22 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f22s6 on (rf22 6) using bank tags []
certRow f22s7 on (rf22 7) using bank tags [1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,1,1,1]
theorem f22 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,1,0,2] (.cons (f22s0) (.cons (f22s1) (.cons (f22s2) (.cons (f22s3) (.cons (f22s4) (.cons (f22s5) (.cons (f22s6) (.cons (f22s7) .nil))))))))
certRow f23 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,1,1,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
end Blc.SelfintSingleObject.Compact44
