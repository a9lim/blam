import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1498 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,0,2,0]
certRow f1498s0 on (rf1498 0) using bank tags [28,28,28,28,28]
certRow f1498s1 on (rf1498 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1498s2 on (rf1498 2) using bank tags [28,28,28,28,28]
certRow f1498s3 on (rf1498 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1498s4 on (rf1498 4) using bank tags [28,28,28,28,28]
certRow f1498s5 on (rf1498 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1498s6 on (rf1498 6) using bank tags [100,100,100,100,100]
certRow f1498s7 on (rf1498 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1498 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,0,2,0] (.cons (f1498s0) (.cons (f1498s1) (.cons (f1498s2) (.cons (f1498s3) (.cons (f1498s4) (.cons (f1498s5) (.cons (f1498s6) (.cons (f1498s7) .nil))))))))
certRow f1499 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,1,0,1]) using bank tags []
certRow f1500 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,1,1,0]) using bank tags []
private abbrev rf1501 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,2,0,0]
certRow f1501s0 on (rf1501 0) using bank tags [28,28,28,28,28,28,28,0,0] except [Floor44.e4823433059226,Floor44.e4823433014170]
certRow f1501s1 on (rf1501 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1501s2 on (rf1501 2) using bank tags [28,28,28,28,28]
certRow f1501s3 on (rf1501 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1501s4 on (rf1501 4) using bank tags [28,28,28,28,28,28,28]
certRow f1501s5 on (rf1501 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1501s6 on (rf1501 6) using bank tags [100,100,100,100,100,0,0] except [Floor44.e4823428687594,Floor44.e4823428676330]
certRow f1501s7 on (rf1501 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1501 (hard : BadRow [Floor44.e4823433059226,Floor44.e4823433014170,Floor44.e4823428687594,Floor44.e4823428676330]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,2,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,2,0,0] (.cons (f1501s0 (.cons (hard.get (by decide : Floor44.e4823433059226 ∈ [Floor44.e4823433059226,Floor44.e4823433014170,Floor44.e4823428687594,Floor44.e4823428676330])) (.cons (hard.get (by decide : Floor44.e4823433014170 ∈ [Floor44.e4823433059226,Floor44.e4823433014170,Floor44.e4823428687594,Floor44.e4823428676330])) .nil))) (.cons (f1501s1) (.cons (f1501s2) (.cons (f1501s3) (.cons (f1501s4) (.cons (f1501s5) (.cons (f1501s6 (.cons (hard.get (by decide : Floor44.e4823428687594 ∈ [Floor44.e4823433059226,Floor44.e4823433014170,Floor44.e4823428687594,Floor44.e4823428676330])) (.cons (hard.get (by decide : Floor44.e4823428676330 ∈ [Floor44.e4823433059226,Floor44.e4823433014170,Floor44.e4823428687594,Floor44.e4823428676330])) .nil))) (.cons (f1501s7) .nil))))))))
certRow f1502 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,1,0,0,1]) using bank tags []
certRow f1503 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,1,0,1,0]) using bank tags []
certRow f1504 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,1,1,0,0]) using bank tags []
private abbrev rf1505 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,1,2,0,0,0]
certRow f1505s0 on (rf1505 0) using bank tags [28,28,28,28,0] except [Floor44.e4823433059994]
certRow f1505s1 on (rf1505 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1505s2 on (rf1505 2) using bank tags [28,28,28,28,28]
certRow f1505s3 on (rf1505 3) using bank tags [28,28,48,48,48,48,48,48,48,48,48]
certRow f1505s4 on (rf1505 4) using bank tags [28,28,28,28]
certRow f1505s5 on (rf1505 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1505s6 on (rf1505 6) using bank tags [100,100,100,0] except [Floor44.e4823428687786]
certRow f1505s7 on (rf1505 7) using bank tags [28,28,28,28,28,28,28,28,28]
theorem f1505 (hard : BadRow [Floor44.e4823433059994,Floor44.e4823428687786]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,2,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,1,2,0,0,0] (.cons (f1505s0 (.cons (hard.get (by decide : Floor44.e4823433059994 ∈ [Floor44.e4823433059994,Floor44.e4823428687786])) .nil)) (.cons (f1505s1) (.cons (f1505s2) (.cons (f1505s3) (.cons (f1505s4) (.cons (f1505s5) (.cons (f1505s6 (.cons (hard.get (by decide : Floor44.e4823428687786 ∈ [Floor44.e4823433059994,Floor44.e4823428687786])) .nil)) (.cons (f1505s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
