import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3434 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,2,0,1]
certRow f3434s0 on (rf3434 0) using bank tags []
certRow f3434s1 on (rf3434 1) using bank tags [3,3]
certRow f3434s2 on (rf3434 2) using bank tags [3]
certRow f3434s3 on (rf3434 3) using bank tags [3,3]
certRow f3434s4 on (rf3434 4) using bank tags [3,3]
certRow f3434s5 on (rf3434 5) using bank tags [3,3]
certRow f3434s6 on (rf3434 6) using bank tags []
certRow f3434s7 on (rf3434 7) using bank tags []
certRow f3434s8 on (rf3434 8) using bank tags []
certRow f3434s9 on (rf3434 9) using bank tags []
certRow f3434s10 on (rf3434 10) using bank tags []
certRow f3434s11 on (rf3434 11) using bank tags []
theorem f3434 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,2,0,1] (.cons (f3434s0) (.cons (f3434s1) (.cons (f3434s2) (.cons (f3434s3) (.cons (f3434s4) (.cons (f3434s5) (.cons (f3434s6) (.cons (f3434s7) (.cons (f3434s8) (.cons (f3434s9) (.cons (f3434s10) (.cons (f3434s11) .nil))))))))))))
private abbrev rf3435 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,2,1,0]
certRow f3435s0 on (rf3435 0) using bank tags []
certRow f3435s1 on (rf3435 1) using bank tags [3]
certRow f3435s2 on (rf3435 2) using bank tags [3]
certRow f3435s3 on (rf3435 3) using bank tags [3]
certRow f3435s4 on (rf3435 4) using bank tags [3]
certRow f3435s5 on (rf3435 5) using bank tags [3]
certRow f3435s6 on (rf3435 6) using bank tags []
certRow f3435s7 on (rf3435 7) using bank tags []
certRow f3435s8 on (rf3435 8) using bank tags []
certRow f3435s9 on (rf3435 9) using bank tags []
certRow f3435s10 on (rf3435 10) using bank tags []
certRow f3435s11 on (rf3435 11) using bank tags []
theorem f3435 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,2,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,2,1,0] (.cons (f3435s0) (.cons (f3435s1) (.cons (f3435s2) (.cons (f3435s3) (.cons (f3435s4) (.cons (f3435s5) (.cons (f3435s6) (.cons (f3435s7) (.cons (f3435s8) (.cons (f3435s9) (.cons (f3435s10) (.cons (f3435s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
