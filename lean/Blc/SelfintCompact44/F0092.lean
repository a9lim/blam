import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf463 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,0,0,1]
certRow f463s0 on (rf463 0) using bank tags [28,28]
certRow f463s1 on (rf463 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f463s2 on (rf463 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f463s3 on (rf463 3) using bank tags [3,3,3,3]
certRow f463s4 on (rf463 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f463s5 on (rf463 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f463s6 on (rf463 6) using bank tags [28,28]
certRow f463s7 on (rf463 7) using bank tags [28,28,28]
theorem f463 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,0,0,1] (.cons (f463s0) (.cons (f463s1) (.cons (f463s2) (.cons (f463s3) (.cons (f463s4) (.cons (f463s5) (.cons (f463s6) (.cons (f463s7) .nil))))))))
private abbrev rf464 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,0,1,0]
certRow f464s0 on (rf464 0) using bank tags [28,28]
certRow f464s1 on (rf464 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f464s2 on (rf464 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f464s3 on (rf464 3) using bank tags [3,3,3,3]
certRow f464s4 on (rf464 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f464s5 on (rf464 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28]
certRow f464s6 on (rf464 6) using bank tags [28,28]
certRow f464s7 on (rf464 7) using bank tags []
theorem f464 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,0,1,0] (.cons (f464s0) (.cons (f464s1) (.cons (f464s2) (.cons (f464s3) (.cons (f464s4) (.cons (f464s5) (.cons (f464s6) (.cons (f464s7) .nil))))))))
private abbrev rf465 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,1,0,0]
certRow f465s0 on (rf465 0) using bank tags [28,28,28,28,28]
certRow f465s1 on (rf465 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f465s2 on (rf465 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow f465s3 on (rf465 3) using bank tags [3,3,3,3]
certRow f465s4 on (rf465 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f465s5 on (rf465 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f465s6 on (rf465 6) using bank tags [28,28]
certRow f465s7 on (rf465 7) using bank tags []
theorem f465 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,1,0,1,0,0] (.cons (f465s0) (.cons (f465s1) (.cons (f465s2) (.cons (f465s3) (.cons (f465s4) (.cons (f465s5) (.cons (f465s6) (.cons (f465s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
