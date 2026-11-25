import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f432 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,1,1,0]) using bank tags []
private abbrev rf433 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,2,0,0]
certRow f433s0 on (rf433 0) using bank tags [3,3,3,3,3,3,28,28,28]
certRow f433s1 on (rf433 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f433s2 on (rf433 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f433s3 on (rf433 3) using bank tags [3,3,3,3,3,3,3]
certRow f433s4 on (rf433 4) using bank tags [3,3,3,3,3,3]
certRow f433s5 on (rf433 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f433s6 on (rf433 6) using bank tags [28,28,28,28]
certRow f433s7 on (rf433 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f433 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,2,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,2,0,0] (.cons (f433s0) (.cons (f433s1) (.cons (f433s2) (.cons (f433s3) (.cons (f433s4) (.cons (f433s5) (.cons (f433s6) (.cons (f433s7) .nil))))))))
private abbrev rf434 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,0,0,1]
certRow f434s0 on (rf434 0) using bank tags []
certRow f434s1 on (rf434 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow f434s2 on (rf434 2) using bank tags [3,3,3,3,3]
certRow f434s3 on (rf434 3) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f434s4 on (rf434 4) using bank tags [3,3,3,3,3]
certRow f434s5 on (rf434 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f434s6 on (rf434 6) using bank tags []
certRow f434s7 on (rf434 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f434s8 on (rf434 8) using bank tags []
certRow f434s9 on (rf434 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f434s10 on (rf434 10) using bank tags []
certRow f434s11 on (rf434 11) using bank tags [3,3,3,3,3,28,28,28,28,28]
theorem f434 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,0,0,1] (.cons (f434s0) (.cons (f434s1) (.cons (f434s2) (.cons (f434s3) (.cons (f434s4) (.cons (f434s5) (.cons (f434s6) (.cons (f434s7) (.cons (f434s8) (.cons (f434s9) (.cons (f434s10) (.cons (f434s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
