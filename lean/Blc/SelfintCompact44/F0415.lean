import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3439 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [1,0,2,0]
certRow f3439s0 on (rf3439 0) using bank tags []
certRow f3439s1 on (rf3439 1) using bank tags [3,3]
certRow f3439s2 on (rf3439 2) using bank tags [3]
certRow f3439s3 on (rf3439 3) using bank tags [3,3]
certRow f3439s4 on (rf3439 4) using bank tags []
certRow f3439s5 on (rf3439 5) using bank tags []
certRow f3439s6 on (rf3439 6) using bank tags []
certRow f3439s7 on (rf3439 7) using bank tags []
certRow f3439s8 on (rf3439 8) using bank tags []
certRow f3439s9 on (rf3439 9) using bank tags []
certRow f3439s10 on (rf3439 10) using bank tags []
certRow f3439s11 on (rf3439 11) using bank tags []
theorem f3439 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [1,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [1,0,2,0] (.cons (f3439s0) (.cons (f3439s1) (.cons (f3439s2) (.cons (f3439s3) (.cons (f3439s4) (.cons (f3439s5) (.cons (f3439s6) (.cons (f3439s7) (.cons (f3439s8) (.cons (f3439s9) (.cons (f3439s10) (.cons (f3439s11) .nil))))))))))))
certRow f3440 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [1,1,0,1]) using bank tags []
certRow f3441 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [1,1,1,0]) using bank tags []
private abbrev rf3442 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [1,2,0,0]
certRow f3442s0 on (rf3442 0) using bank tags []
certRow f3442s1 on (rf3442 1) using bank tags [3,3]
certRow f3442s2 on (rf3442 2) using bank tags []
certRow f3442s3 on (rf3442 3) using bank tags [3]
certRow f3442s4 on (rf3442 4) using bank tags []
certRow f3442s5 on (rf3442 5) using bank tags []
certRow f3442s6 on (rf3442 6) using bank tags []
certRow f3442s7 on (rf3442 7) using bank tags []
certRow f3442s8 on (rf3442 8) using bank tags []
certRow f3442s9 on (rf3442 9) using bank tags []
certRow f3442s10 on (rf3442 10) using bank tags []
certRow f3442s11 on (rf3442 11) using bank tags []
theorem f3442 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [1,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [1,2,0,0] (.cons (f3442s0) (.cons (f3442s1) (.cons (f3442s2) (.cons (f3442s3) (.cons (f3442s4) (.cons (f3442s5) (.cons (f3442s6) (.cons (f3442s7) (.cons (f3442s8) (.cons (f3442s9) (.cons (f3442s10) (.cons (f3442s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
