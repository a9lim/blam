import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3423 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [3,0,0,1]
certRow f3423s0 on (rf3423 0) using bank tags []
certRow f3423s1 on (rf3423 1) using bank tags []
certRow f3423s2 on (rf3423 2) using bank tags []
certRow f3423s3 on (rf3423 3) using bank tags []
certRow f3423s4 on (rf3423 4) using bank tags []
certRow f3423s5 on (rf3423 5) using bank tags []
certRow f3423s6 on (rf3423 6) using bank tags []
certRow f3423s7 on (rf3423 7) using bank tags []
certRow f3423s8 on (rf3423 8) using bank tags []
certRow f3423s9 on (rf3423 9) using bank tags []
certRow f3423s10 on (rf3423 10) using bank tags []
certRow f3423s11 on (rf3423 11) using bank tags []
theorem f3423 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [3,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [3,0,0,1] (.cons (f3423s0) (.cons (f3423s1) (.cons (f3423s2) (.cons (f3423s3) (.cons (f3423s4) (.cons (f3423s5) (.cons (f3423s6) (.cons (f3423s7) (.cons (f3423s8) (.cons (f3423s9) (.cons (f3423s10) (.cons (f3423s11) .nil))))))))))))
private abbrev rf3424 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [3,0,1,0]
certRow f3424s0 on (rf3424 0) using bank tags []
certRow f3424s1 on (rf3424 1) using bank tags []
certRow f3424s2 on (rf3424 2) using bank tags []
certRow f3424s3 on (rf3424 3) using bank tags []
certRow f3424s4 on (rf3424 4) using bank tags []
certRow f3424s5 on (rf3424 5) using bank tags []
certRow f3424s6 on (rf3424 6) using bank tags []
certRow f3424s7 on (rf3424 7) using bank tags []
certRow f3424s8 on (rf3424 8) using bank tags []
certRow f3424s9 on (rf3424 9) using bank tags []
certRow f3424s10 on (rf3424 10) using bank tags []
certRow f3424s11 on (rf3424 11) using bank tags []
theorem f3424 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [3,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [3,0,1,0] (.cons (f3424s0) (.cons (f3424s1) (.cons (f3424s2) (.cons (f3424s3) (.cons (f3424s4) (.cons (f3424s5) (.cons (f3424s6) (.cons (f3424s7) (.cons (f3424s8) (.cons (f3424s9) (.cons (f3424s10) (.cons (f3424s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
