import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1509 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,2,1,0,0,0]
certRow f1509s0 on (rf1509 0) using bank tags [28,28,28,28,0] except [Floor44.e4823433072282]
certRow f1509s1 on (rf1509 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1509s2 on (rf1509 2) using bank tags [28,28,28,28,28]
certRow f1509s3 on (rf1509 3) using bank tags [28,28,48,48,48,48,48,48,48,48,48]
certRow f1509s4 on (rf1509 4) using bank tags [28,28,28,28]
certRow f1509s5 on (rf1509 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1509s6 on (rf1509 6) using bank tags [100,100,100,0] except [Floor44.e4823428690858]
certRow f1509s7 on (rf1509 7) using bank tags [28,28,28,28,28,28,28,28,28]
theorem f1509 (hard : BadRow [Floor44.e4823433072282,Floor44.e4823428690858]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,2,1,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,2,1,0,0,0] (.cons (f1509s0 (.cons (hard.get (by decide : Floor44.e4823433072282 ∈ [Floor44.e4823433072282,Floor44.e4823428690858])) .nil)) (.cons (f1509s1) (.cons (f1509s2) (.cons (f1509s3) (.cons (f1509s4) (.cons (f1509s5) (.cons (f1509s6 (.cons (hard.get (by decide : Floor44.e4823428690858 ∈ [Floor44.e4823433072282,Floor44.e4823428690858])) .nil)) (.cons (f1509s7) .nil))))))))
certRow f1510 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,0,0,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1511 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,0,0,1,1]) using bank tags []
certRow f1512 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,0,0,2,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1513 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,0,1,0,1]) using bank tags []
certRow f1514 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,0,1,1,0]) using bank tags []
certRow f1515 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,0,2,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1516 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,1,0,0,1]) using bank tags []
certRow f1517 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,1,0,1,0]) using bank tags []
certRow f1518 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,1,1,0,0]) using bank tags []
certRow f1519 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,0,2,0,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1520 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,1,0,0,0,1]) using bank tags []
certRow f1521 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,1,0,0,1,0]) using bank tags []
certRow f1522 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,1,0,1,0,0]) using bank tags []
certRow f1523 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [1,1,1,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
