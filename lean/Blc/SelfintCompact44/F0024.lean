import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf90 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,2,0]
certRow f90s0 on (rf90 0) using bank tags [35,35,6,35,6]
certRow f90s1 on (rf90 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f90s2 on (rf90 2) using bank tags [1,1,1,1,1]
certRow f90s3 on (rf90 3) using bank tags [6,6,1,1]
certRow f90s4 on (rf90 4) using bank tags [1,1,1,1,1]
certRow f90s5 on (rf90 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f90s6 on (rf90 6) using bank tags []
certRow f90s7 on (rf90 7) using bank tags [35,35,35,35,35,6,6,35,6,35,35,6,35,6]
theorem f90 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,2,0] (.cons (f90s0) (.cons (f90s1) (.cons (f90s2) (.cons (f90s3) (.cons (f90s4) (.cons (f90s5) (.cons (f90s6) (.cons (f90s7) .nil))))))))
private abbrev rf91 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,1,0,1]
certRow f91s0 on (rf91 0) using bank tags [6,6,6]
certRow f91s1 on (rf91 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f91s2 on (rf91 2) using bank tags [28,28,28,28,28]
certRow f91s3 on (rf91 3) using bank tags [28,28,28,28]
certRow f91s4 on (rf91 4) using bank tags [28,28,28,28,28]
certRow f91s5 on (rf91 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f91s6 on (rf91 6) using bank tags []
certRow f91s7 on (rf91 7) using bank tags [1,1,1,1,1,35,35,35,24,6,6,35,35,24]
theorem f91 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,1,0,1] (.cons (f91s0) (.cons (f91s1) (.cons (f91s2) (.cons (f91s3) (.cons (f91s4) (.cons (f91s5) (.cons (f91s6) (.cons (f91s7) .nil))))))))
certRow f92 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,1,1,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,35,35,35,24]
certRow f93 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,2,0,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,35,35,35,35,35,6,6,35,35,6,35,35,6]
private abbrev rf94 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,0,0,1]
certRow f94s0 on (rf94 0) using bank tags []
certRow f94s1 on (rf94 1) using bank tags [1,1,31,31,26,1,1,1,1,1,1,1,1,1]
certRow f94s2 on (rf94 2) using bank tags [1,1,1,1,15]
certRow f94s3 on (rf94 3) using bank tags [1,6,1,1]
certRow f94s4 on (rf94 4) using bank tags [30,1,1,1,1]
certRow f94s5 on (rf94 5) using bank tags [30,31,1,1,1,1,1,1,1,30,1,1,1,1]
certRow f94s6 on (rf94 6) using bank tags []
certRow f94s7 on (rf94 7) using bank tags [0,19,19,19,19,19,19,19,19,19,19,19,19,19] except [Floor44.e4845196866358]
theorem f94 (hard : BadRow [Floor44.e4845196866358]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,0,0,1] (.cons (f94s0) (.cons (f94s1) (.cons (f94s2) (.cons (f94s3) (.cons (f94s4) (.cons (f94s5) (.cons (f94s6) (.cons (f94s7 (.cons (hard.get (by decide : Floor44.e4845196866358 ∈ [Floor44.e4845196866358])) .nil)) .nil))))))))
end Blc.SelfintSingleObject.Compact44
