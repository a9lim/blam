import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf422 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,1,0,2]
certRow f422s0 on (rf422 0) using bank tags []
certRow f422s1 on (rf422 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f422s2 on (rf422 2) using bank tags [3,3,3,3,3]
certRow f422s3 on (rf422 3) using bank tags [3,3,3,3,3,3,3,3]
certRow f422s4 on (rf422 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f422s5 on (rf422 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f422s6 on (rf422 6) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f422s7 on (rf422 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f422s8 on (rf422 8) using bank tags []
certRow f422s9 on (rf422 9) using bank tags [28,28,28,28,28,28,28]
certRow f422s10 on (rf422 10) using bank tags []
certRow f422s11 on (rf422 11) using bank tags [3,3,3,3,3,3,3,28,28]
theorem f422 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,1,0,2] (.cons (f422s0) (.cons (f422s1) (.cons (f422s2) (.cons (f422s3) (.cons (f422s4) (.cons (f422s5) (.cons (f422s6) (.cons (f422s7) (.cons (f422s8) (.cons (f422s9) (.cons (f422s10) (.cons (f422s11) .nil))))))))))))
certRow f423 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,1,1,1]) using bank tags []
private abbrev rf424 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,1,2,0]
certRow f424s0 on (rf424 0) using bank tags [3,3,3,3,3]
certRow f424s1 on (rf424 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f424s2 on (rf424 2) using bank tags [3,3,3,3,3]
certRow f424s3 on (rf424 3) using bank tags [3,3,3,3,3,3]
certRow f424s4 on (rf424 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f424s5 on (rf424 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f424s6 on (rf424 6) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f424s7 on (rf424 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f424s8 on (rf424 8) using bank tags []
certRow f424s9 on (rf424 9) using bank tags [28,28,28,28,28,28,28]
certRow f424s10 on (rf424 10) using bank tags []
certRow f424s11 on (rf424 11) using bank tags [3,3,3,3,28,28]
theorem f424 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,1,2,0] (.cons (f424s0) (.cons (f424s1) (.cons (f424s2) (.cons (f424s3) (.cons (f424s4) (.cons (f424s5) (.cons (f424s6) (.cons (f424s7) (.cons (f424s8) (.cons (f424s9) (.cons (f424s10) (.cons (f424s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
