import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf450 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,1,0,0]
certRow f450s0 on (rf450 0) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow f450s1 on (rf450 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f450s2 on (rf450 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28]
certRow f450s3 on (rf450 3) using bank tags [3,3,3,3]
certRow f450s4 on (rf450 4) using bank tags [3,3,3,3,3,3,3]
certRow f450s5 on (rf450 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f450s6 on (rf450 6) using bank tags []
certRow f450s7 on (rf450 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f450 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,1,0,0] (.cons (f450s0) (.cons (f450s1) (.cons (f450s2) (.cons (f450s3) (.cons (f450s4) (.cons (f450s5) (.cons (f450s6) (.cons (f450s7) .nil))))))))
private abbrev rf451 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,2,1,0,0,0]
certRow f451s0 on (rf451 0) using bank tags [3,3,3,3,28,28]
certRow f451s1 on (rf451 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f451s2 on (rf451 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f451s3 on (rf451 3) using bank tags []
certRow f451s4 on (rf451 4) using bank tags [3,3,3,3]
certRow f451s5 on (rf451 5) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f451s6 on (rf451 6) using bank tags [28,28]
certRow f451s7 on (rf451 7) using bank tags [3,3,3,3,3,3,3,3,3]
theorem f451 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,2,1,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,2,1,0,0,0] (.cons (f451s0) (.cons (f451s1) (.cons (f451s2) (.cons (f451s3) (.cons (f451s4) (.cons (f451s5) (.cons (f451s6) (.cons (f451s7) .nil))))))))
private abbrev rf452 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,3,0,0,0,0]
certRow f452s0 on (rf452 0) using bank tags []
certRow f452s1 on (rf452 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f452s2 on (rf452 2) using bank tags []
certRow f452s3 on (rf452 3) using bank tags [28,28]
certRow f452s4 on (rf452 4) using bank tags [28,28,28]
certRow f452s5 on (rf452 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f452s6 on (rf452 6) using bank tags []
certRow f452s7 on (rf452 7) using bank tags []
theorem f452 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,3,0,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,3,0,0,0,0] (.cons (f452s0) (.cons (f452s1) (.cons (f452s2) (.cons (f452s3) (.cons (f452s4) (.cons (f452s5) (.cons (f452s6) (.cons (f452s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
