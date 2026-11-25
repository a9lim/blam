import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3431 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,1,0,2]
certRow f3431s0 on (rf3431 0) using bank tags []
certRow f3431s1 on (rf3431 1) using bank tags [3,3]
certRow f3431s2 on (rf3431 2) using bank tags [3]
certRow f3431s3 on (rf3431 3) using bank tags [3,3]
certRow f3431s4 on (rf3431 4) using bank tags [3,3]
certRow f3431s5 on (rf3431 5) using bank tags [3,3]
certRow f3431s6 on (rf3431 6) using bank tags []
certRow f3431s7 on (rf3431 7) using bank tags []
certRow f3431s8 on (rf3431 8) using bank tags []
certRow f3431s9 on (rf3431 9) using bank tags []
certRow f3431s10 on (rf3431 10) using bank tags []
certRow f3431s11 on (rf3431 11) using bank tags []
theorem f3431 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,1,0,2] (.cons (f3431s0) (.cons (f3431s1) (.cons (f3431s2) (.cons (f3431s3) (.cons (f3431s4) (.cons (f3431s5) (.cons (f3431s6) (.cons (f3431s7) (.cons (f3431s8) (.cons (f3431s9) (.cons (f3431s10) (.cons (f3431s11) .nil))))))))))))
certRow f3432 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,1,1,1]) using bank tags []
private abbrev rf3433 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,1,2,0]
certRow f3433s0 on (rf3433 0) using bank tags []
certRow f3433s1 on (rf3433 1) using bank tags [3]
certRow f3433s2 on (rf3433 2) using bank tags [3]
certRow f3433s3 on (rf3433 3) using bank tags [3]
certRow f3433s4 on (rf3433 4) using bank tags [3]
certRow f3433s5 on (rf3433 5) using bank tags [3]
certRow f3433s6 on (rf3433 6) using bank tags []
certRow f3433s7 on (rf3433 7) using bank tags []
certRow f3433s8 on (rf3433 8) using bank tags []
certRow f3433s9 on (rf3433 9) using bank tags []
certRow f3433s10 on (rf3433 10) using bank tags []
certRow f3433s11 on (rf3433 11) using bank tags []
theorem f3433 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,1,2,0] (.cons (f3433s0) (.cons (f3433s1) (.cons (f3433s2) (.cons (f3433s3) (.cons (f3433s4) (.cons (f3433s5) (.cons (f3433s6) (.cons (f3433s7) (.cons (f3433s8) (.cons (f3433s9) (.cons (f3433s10) (.cons (f3433s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
