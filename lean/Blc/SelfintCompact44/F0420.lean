import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3451 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,1,0,2]
certRow f3451s0 on (rf3451 0) using bank tags []
certRow f3451s1 on (rf3451 1) using bank tags []
certRow f3451s2 on (rf3451 2) using bank tags []
certRow f3451s3 on (rf3451 3) using bank tags []
certRow f3451s4 on (rf3451 4) using bank tags []
certRow f3451s5 on (rf3451 5) using bank tags []
certRow f3451s6 on (rf3451 6) using bank tags []
certRow f3451s7 on (rf3451 7) using bank tags []
certRow f3451s8 on (rf3451 8) using bank tags []
certRow f3451s9 on (rf3451 9) using bank tags []
certRow f3451s10 on (rf3451 10) using bank tags []
certRow f3451s11 on (rf3451 11) using bank tags []
theorem f3451 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,1,0,2] (.cons (f3451s0) (.cons (f3451s1) (.cons (f3451s2) (.cons (f3451s3) (.cons (f3451s4) (.cons (f3451s5) (.cons (f3451s6) (.cons (f3451s7) (.cons (f3451s8) (.cons (f3451s9) (.cons (f3451s10) (.cons (f3451s11) .nil))))))))))))
certRow f3452 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,1,1,1]) using bank tags []
private abbrev rf3453 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,1,2,0]
certRow f3453s0 on (rf3453 0) using bank tags []
certRow f3453s1 on (rf3453 1) using bank tags []
certRow f3453s2 on (rf3453 2) using bank tags []
certRow f3453s3 on (rf3453 3) using bank tags []
certRow f3453s4 on (rf3453 4) using bank tags []
certRow f3453s5 on (rf3453 5) using bank tags []
certRow f3453s6 on (rf3453 6) using bank tags []
certRow f3453s7 on (rf3453 7) using bank tags []
certRow f3453s8 on (rf3453 8) using bank tags []
certRow f3453s9 on (rf3453 9) using bank tags []
certRow f3453s10 on (rf3453 10) using bank tags []
certRow f3453s11 on (rf3453 11) using bank tags []
theorem f3453 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,1,2,0] (.cons (f3453s0) (.cons (f3453s1) (.cons (f3453s2) (.cons (f3453s3) (.cons (f3453s4) (.cons (f3453s5) (.cons (f3453s6) (.cons (f3453s7) (.cons (f3453s8) (.cons (f3453s9) (.cons (f3453s10) (.cons (f3453s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
