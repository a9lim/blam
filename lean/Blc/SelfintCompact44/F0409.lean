import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3425 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [3,1,0,0]
certRow f3425s0 on (rf3425 0) using bank tags []
certRow f3425s1 on (rf3425 1) using bank tags []
certRow f3425s2 on (rf3425 2) using bank tags []
certRow f3425s3 on (rf3425 3) using bank tags []
certRow f3425s4 on (rf3425 4) using bank tags []
certRow f3425s5 on (rf3425 5) using bank tags []
certRow f3425s6 on (rf3425 6) using bank tags []
certRow f3425s7 on (rf3425 7) using bank tags []
certRow f3425s8 on (rf3425 8) using bank tags []
certRow f3425s9 on (rf3425 9) using bank tags []
certRow f3425s10 on (rf3425 10) using bank tags []
certRow f3425s11 on (rf3425 11) using bank tags []
theorem f3425 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [3,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [3,1,0,0] (.cons (f3425s0) (.cons (f3425s1) (.cons (f3425s2) (.cons (f3425s3) (.cons (f3425s4) (.cons (f3425s5) (.cons (f3425s6) (.cons (f3425s7) (.cons (f3425s8) (.cons (f3425s9) (.cons (f3425s10) (.cons (f3425s11) .nil))))))))))))
private abbrev rf3426 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [4,0,0,0]
certRow f3426s0 on (rf3426 0) using bank tags []
certRow f3426s1 on (rf3426 1) using bank tags []
certRow f3426s2 on (rf3426 2) using bank tags []
certRow f3426s3 on (rf3426 3) using bank tags []
certRow f3426s4 on (rf3426 4) using bank tags []
certRow f3426s5 on (rf3426 5) using bank tags []
certRow f3426s6 on (rf3426 6) using bank tags []
certRow f3426s7 on (rf3426 7) using bank tags []
certRow f3426s8 on (rf3426 8) using bank tags []
certRow f3426s9 on (rf3426 9) using bank tags []
certRow f3426s10 on (rf3426 10) using bank tags []
certRow f3426s11 on (rf3426 11) using bank tags []
theorem f3426 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [4,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [4,0,0,0] (.cons (f3426s0) (.cons (f3426s1) (.cons (f3426s2) (.cons (f3426s3) (.cons (f3426s4) (.cons (f3426s5) (.cons (f3426s6) (.cons (f3426s7) (.cons (f3426s8) (.cons (f3426s9) (.cons (f3426s10) (.cons (f3426s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
