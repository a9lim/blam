import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3408 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,0,1,2]
certRow f3408s0 on (rf3408 0) using bank tags []
certRow f3408s1 on (rf3408 1) using bank tags []
certRow f3408s2 on (rf3408 2) using bank tags []
certRow f3408s3 on (rf3408 3) using bank tags []
certRow f3408s4 on (rf3408 4) using bank tags []
certRow f3408s5 on (rf3408 5) using bank tags []
certRow f3408s6 on (rf3408 6) using bank tags []
certRow f3408s7 on (rf3408 7) using bank tags []
certRow f3408s8 on (rf3408 8) using bank tags []
certRow f3408s9 on (rf3408 9) using bank tags []
certRow f3408s10 on (rf3408 10) using bank tags []
certRow f3408s11 on (rf3408 11) using bank tags []
theorem f3408 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,0,1,2] (.cons (f3408s0) (.cons (f3408s1) (.cons (f3408s2) (.cons (f3408s3) (.cons (f3408s4) (.cons (f3408s5) (.cons (f3408s6) (.cons (f3408s7) (.cons (f3408s8) (.cons (f3408s9) (.cons (f3408s10) (.cons (f3408s11) .nil))))))))))))
private abbrev rf3409 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,0,2,1]
certRow f3409s0 on (rf3409 0) using bank tags []
certRow f3409s1 on (rf3409 1) using bank tags []
certRow f3409s2 on (rf3409 2) using bank tags []
certRow f3409s3 on (rf3409 3) using bank tags []
certRow f3409s4 on (rf3409 4) using bank tags []
certRow f3409s5 on (rf3409 5) using bank tags []
certRow f3409s6 on (rf3409 6) using bank tags []
certRow f3409s7 on (rf3409 7) using bank tags []
certRow f3409s8 on (rf3409 8) using bank tags []
certRow f3409s9 on (rf3409 9) using bank tags []
certRow f3409s10 on (rf3409 10) using bank tags []
certRow f3409s11 on (rf3409 11) using bank tags []
theorem f3409 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,0,2,1] (.cons (f3409s0) (.cons (f3409s1) (.cons (f3409s2) (.cons (f3409s3) (.cons (f3409s4) (.cons (f3409s5) (.cons (f3409s6) (.cons (f3409s7) (.cons (f3409s8) (.cons (f3409s9) (.cons (f3409s10) (.cons (f3409s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
