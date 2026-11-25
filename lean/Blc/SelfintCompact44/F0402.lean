import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3410 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,0,3,0]
certRow f3410s0 on (rf3410 0) using bank tags []
certRow f3410s1 on (rf3410 1) using bank tags []
certRow f3410s2 on (rf3410 2) using bank tags []
certRow f3410s3 on (rf3410 3) using bank tags []
certRow f3410s4 on (rf3410 4) using bank tags []
certRow f3410s5 on (rf3410 5) using bank tags []
certRow f3410s6 on (rf3410 6) using bank tags []
certRow f3410s7 on (rf3410 7) using bank tags []
certRow f3410s8 on (rf3410 8) using bank tags []
certRow f3410s9 on (rf3410 9) using bank tags []
certRow f3410s10 on (rf3410 10) using bank tags []
certRow f3410s11 on (rf3410 11) using bank tags []
theorem f3410 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,0,3,0] (.cons (f3410s0) (.cons (f3410s1) (.cons (f3410s2) (.cons (f3410s3) (.cons (f3410s4) (.cons (f3410s5) (.cons (f3410s6) (.cons (f3410s7) (.cons (f3410s8) (.cons (f3410s9) (.cons (f3410s10) (.cons (f3410s11) .nil))))))))))))
private abbrev rf3411 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,1,0,2]
certRow f3411s0 on (rf3411 0) using bank tags []
certRow f3411s1 on (rf3411 1) using bank tags []
certRow f3411s2 on (rf3411 2) using bank tags []
certRow f3411s3 on (rf3411 3) using bank tags []
certRow f3411s4 on (rf3411 4) using bank tags []
certRow f3411s5 on (rf3411 5) using bank tags []
certRow f3411s6 on (rf3411 6) using bank tags []
certRow f3411s7 on (rf3411 7) using bank tags []
certRow f3411s8 on (rf3411 8) using bank tags []
certRow f3411s9 on (rf3411 9) using bank tags []
certRow f3411s10 on (rf3411 10) using bank tags []
certRow f3411s11 on (rf3411 11) using bank tags []
theorem f3411 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,1,0,2] (.cons (f3411s0) (.cons (f3411s1) (.cons (f3411s2) (.cons (f3411s3) (.cons (f3411s4) (.cons (f3411s5) (.cons (f3411s6) (.cons (f3411s7) (.cons (f3411s8) (.cons (f3411s9) (.cons (f3411s10) (.cons (f3411s11) .nil))))))))))))
certRow f3412 on (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
