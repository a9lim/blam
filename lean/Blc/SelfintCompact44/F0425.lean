import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3465 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [2,1,0,0]
certRow f3465s0 on (rf3465 0) using bank tags []
certRow f3465s1 on (rf3465 1) using bank tags []
certRow f3465s2 on (rf3465 2) using bank tags []
certRow f3465s3 on (rf3465 3) using bank tags []
certRow f3465s4 on (rf3465 4) using bank tags []
certRow f3465s5 on (rf3465 5) using bank tags []
certRow f3465s6 on (rf3465 6) using bank tags []
certRow f3465s7 on (rf3465 7) using bank tags []
certRow f3465s8 on (rf3465 8) using bank tags []
certRow f3465s9 on (rf3465 9) using bank tags []
certRow f3465s10 on (rf3465 10) using bank tags []
certRow f3465s11 on (rf3465 11) using bank tags []
theorem f3465 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [2,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [2,1,0,0] (.cons (f3465s0) (.cons (f3465s1) (.cons (f3465s2) (.cons (f3465s3) (.cons (f3465s4) (.cons (f3465s5) (.cons (f3465s6) (.cons (f3465s7) (.cons (f3465s8) (.cons (f3465s9) (.cons (f3465s10) (.cons (f3465s11) .nil))))))))))))
private abbrev rf3466 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [3,0,0,0]
certRow f3466s0 on (rf3466 0) using bank tags []
certRow f3466s1 on (rf3466 1) using bank tags []
certRow f3466s2 on (rf3466 2) using bank tags []
certRow f3466s3 on (rf3466 3) using bank tags []
certRow f3466s4 on (rf3466 4) using bank tags []
certRow f3466s5 on (rf3466 5) using bank tags []
certRow f3466s6 on (rf3466 6) using bank tags []
certRow f3466s7 on (rf3466 7) using bank tags []
certRow f3466s8 on (rf3466 8) using bank tags []
certRow f3466s9 on (rf3466 9) using bank tags []
certRow f3466s10 on (rf3466 10) using bank tags []
certRow f3466s11 on (rf3466 11) using bank tags []
theorem f3466 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [3,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [3,0,0,0] (.cons (f3466s0) (.cons (f3466s1) (.cons (f3466s2) (.cons (f3466s3) (.cons (f3466s4) (.cons (f3466s5) (.cons (f3466s6) (.cons (f3466s7) (.cons (f3466s8) (.cons (f3466s9) (.cons (f3466s10) (.cons (f3466s11) .nil))))))))))))
certRow f3467 on (Grammar43.fourRow ⟨2,2,2,2,4,8⟩ [0,2] [2,2,2,2]) using bank tags []
certRow f3468 on (Grammar43.fourRow ⟨2,2,2,2,4,8⟩ [1,1] [2,2,2,2]) using bank tags []
certRow f3469 on (Grammar43.fourRow ⟨2,2,2,2,4,8⟩ [2,0] [2,2,2,2]) using bank tags []
certRow f3470 on (Grammar43.fourRow ⟨2,2,3,2,4,7⟩ [1,2] [1,2,2,2]) using bank tags []
certRow f3471 on (Grammar43.fourRow ⟨2,2,3,2,4,7⟩ [1,2] [2,1,2,2]) using bank tags []
certRow f3472 on (Grammar43.fourRow ⟨2,2,3,2,4,7⟩ [1,2] [2,2,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
