import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3400 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,1,3,0]
certRow f3400s0 on (rf3400 0) using bank tags []
certRow f3400s1 on (rf3400 1) using bank tags []
certRow f3400s2 on (rf3400 2) using bank tags []
certRow f3400s3 on (rf3400 3) using bank tags []
certRow f3400s4 on (rf3400 4) using bank tags []
certRow f3400s5 on (rf3400 5) using bank tags []
certRow f3400s6 on (rf3400 6) using bank tags []
certRow f3400s7 on (rf3400 7) using bank tags []
certRow f3400s8 on (rf3400 8) using bank tags []
certRow f3400s9 on (rf3400 9) using bank tags []
certRow f3400s10 on (rf3400 10) using bank tags []
certRow f3400s11 on (rf3400 11) using bank tags []
theorem f3400 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,1,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,1,3,0] (.cons (f3400s0) (.cons (f3400s1) (.cons (f3400s2) (.cons (f3400s3) (.cons (f3400s4) (.cons (f3400s5) (.cons (f3400s6) (.cons (f3400s7) (.cons (f3400s8) (.cons (f3400s9) (.cons (f3400s10) (.cons (f3400s11) .nil))))))))))))
private abbrev rf3401 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,2,0,2]
certRow f3401s0 on (rf3401 0) using bank tags []
certRow f3401s1 on (rf3401 1) using bank tags []
certRow f3401s2 on (rf3401 2) using bank tags []
certRow f3401s3 on (rf3401 3) using bank tags []
certRow f3401s4 on (rf3401 4) using bank tags []
certRow f3401s5 on (rf3401 5) using bank tags []
certRow f3401s6 on (rf3401 6) using bank tags []
certRow f3401s7 on (rf3401 7) using bank tags []
certRow f3401s8 on (rf3401 8) using bank tags []
certRow f3401s9 on (rf3401 9) using bank tags []
certRow f3401s10 on (rf3401 10) using bank tags []
certRow f3401s11 on (rf3401 11) using bank tags []
theorem f3401 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,2,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,2,0,2] (.cons (f3401s0) (.cons (f3401s1) (.cons (f3401s2) (.cons (f3401s3) (.cons (f3401s4) (.cons (f3401s5) (.cons (f3401s6) (.cons (f3401s7) (.cons (f3401s8) (.cons (f3401s9) (.cons (f3401s10) (.cons (f3401s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
