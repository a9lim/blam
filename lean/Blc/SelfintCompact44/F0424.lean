import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3463 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [2,0,0,1]
certRow f3463s0 on (rf3463 0) using bank tags []
certRow f3463s1 on (rf3463 1) using bank tags []
certRow f3463s2 on (rf3463 2) using bank tags []
certRow f3463s3 on (rf3463 3) using bank tags []
certRow f3463s4 on (rf3463 4) using bank tags []
certRow f3463s5 on (rf3463 5) using bank tags []
certRow f3463s6 on (rf3463 6) using bank tags []
certRow f3463s7 on (rf3463 7) using bank tags []
certRow f3463s8 on (rf3463 8) using bank tags []
certRow f3463s9 on (rf3463 9) using bank tags []
certRow f3463s10 on (rf3463 10) using bank tags []
certRow f3463s11 on (rf3463 11) using bank tags []
theorem f3463 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [2,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [2,0,0,1] (.cons (f3463s0) (.cons (f3463s1) (.cons (f3463s2) (.cons (f3463s3) (.cons (f3463s4) (.cons (f3463s5) (.cons (f3463s6) (.cons (f3463s7) (.cons (f3463s8) (.cons (f3463s9) (.cons (f3463s10) (.cons (f3463s11) .nil))))))))))))
private abbrev rf3464 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [2,0,1,0]
certRow f3464s0 on (rf3464 0) using bank tags []
certRow f3464s1 on (rf3464 1) using bank tags []
certRow f3464s2 on (rf3464 2) using bank tags []
certRow f3464s3 on (rf3464 3) using bank tags []
certRow f3464s4 on (rf3464 4) using bank tags []
certRow f3464s5 on (rf3464 5) using bank tags []
certRow f3464s6 on (rf3464 6) using bank tags []
certRow f3464s7 on (rf3464 7) using bank tags []
certRow f3464s8 on (rf3464 8) using bank tags []
certRow f3464s9 on (rf3464 9) using bank tags []
certRow f3464s10 on (rf3464 10) using bank tags []
certRow f3464s11 on (rf3464 11) using bank tags []
theorem f3464 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [2,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [2,0,1,0] (.cons (f3464s0) (.cons (f3464s1) (.cons (f3464s2) (.cons (f3464s3) (.cons (f3464s4) (.cons (f3464s5) (.cons (f3464s6) (.cons (f3464s7) (.cons (f3464s8) (.cons (f3464s9) (.cons (f3464s10) (.cons (f3464s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
