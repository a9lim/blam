import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3421 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [2,1,1,0]
certRow f3421s0 on (rf3421 0) using bank tags []
certRow f3421s1 on (rf3421 1) using bank tags []
certRow f3421s2 on (rf3421 2) using bank tags []
certRow f3421s3 on (rf3421 3) using bank tags []
certRow f3421s4 on (rf3421 4) using bank tags []
certRow f3421s5 on (rf3421 5) using bank tags []
certRow f3421s6 on (rf3421 6) using bank tags []
certRow f3421s7 on (rf3421 7) using bank tags []
certRow f3421s8 on (rf3421 8) using bank tags []
certRow f3421s9 on (rf3421 9) using bank tags []
certRow f3421s10 on (rf3421 10) using bank tags []
certRow f3421s11 on (rf3421 11) using bank tags []
theorem f3421 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [2,1,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [2,1,1,0] (.cons (f3421s0) (.cons (f3421s1) (.cons (f3421s2) (.cons (f3421s3) (.cons (f3421s4) (.cons (f3421s5) (.cons (f3421s6) (.cons (f3421s7) (.cons (f3421s8) (.cons (f3421s9) (.cons (f3421s10) (.cons (f3421s11) .nil))))))))))))
private abbrev rf3422 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [2,2,0,0]
certRow f3422s0 on (rf3422 0) using bank tags []
certRow f3422s1 on (rf3422 1) using bank tags []
certRow f3422s2 on (rf3422 2) using bank tags []
certRow f3422s3 on (rf3422 3) using bank tags []
certRow f3422s4 on (rf3422 4) using bank tags []
certRow f3422s5 on (rf3422 5) using bank tags []
certRow f3422s6 on (rf3422 6) using bank tags []
certRow f3422s7 on (rf3422 7) using bank tags []
certRow f3422s8 on (rf3422 8) using bank tags []
certRow f3422s9 on (rf3422 9) using bank tags []
certRow f3422s10 on (rf3422 10) using bank tags []
certRow f3422s11 on (rf3422 11) using bank tags []
theorem f3422 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [2,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [2,2,0,0] (.cons (f3422s0) (.cons (f3422s1) (.cons (f3422s2) (.cons (f3422s3) (.cons (f3422s4) (.cons (f3422s5) (.cons (f3422s6) (.cons (f3422s7) (.cons (f3422s8) (.cons (f3422s9) (.cons (f3422s10) (.cons (f3422s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
