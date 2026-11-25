import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3454 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,2,0,1]
certRow f3454s0 on (rf3454 0) using bank tags []
certRow f3454s1 on (rf3454 1) using bank tags []
certRow f3454s2 on (rf3454 2) using bank tags []
certRow f3454s3 on (rf3454 3) using bank tags []
certRow f3454s4 on (rf3454 4) using bank tags []
certRow f3454s5 on (rf3454 5) using bank tags []
certRow f3454s6 on (rf3454 6) using bank tags []
certRow f3454s7 on (rf3454 7) using bank tags []
certRow f3454s8 on (rf3454 8) using bank tags []
certRow f3454s9 on (rf3454 9) using bank tags []
certRow f3454s10 on (rf3454 10) using bank tags []
certRow f3454s11 on (rf3454 11) using bank tags []
theorem f3454 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,2,0,1] (.cons (f3454s0) (.cons (f3454s1) (.cons (f3454s2) (.cons (f3454s3) (.cons (f3454s4) (.cons (f3454s5) (.cons (f3454s6) (.cons (f3454s7) (.cons (f3454s8) (.cons (f3454s9) (.cons (f3454s10) (.cons (f3454s11) .nil))))))))))))
private abbrev rf3455 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,2,1,0]
certRow f3455s0 on (rf3455 0) using bank tags []
certRow f3455s1 on (rf3455 1) using bank tags []
certRow f3455s2 on (rf3455 2) using bank tags []
certRow f3455s3 on (rf3455 3) using bank tags []
certRow f3455s4 on (rf3455 4) using bank tags []
certRow f3455s5 on (rf3455 5) using bank tags []
certRow f3455s6 on (rf3455 6) using bank tags []
certRow f3455s7 on (rf3455 7) using bank tags []
certRow f3455s8 on (rf3455 8) using bank tags []
certRow f3455s9 on (rf3455 9) using bank tags []
certRow f3455s10 on (rf3455 10) using bank tags []
certRow f3455s11 on (rf3455 11) using bank tags []
theorem f3455 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,2,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,2,1,0] (.cons (f3455s0) (.cons (f3455s1) (.cons (f3455s2) (.cons (f3455s3) (.cons (f3455s4) (.cons (f3455s5) (.cons (f3455s6) (.cons (f3455s7) (.cons (f3455s8) (.cons (f3455s9) (.cons (f3455s10) (.cons (f3455s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
