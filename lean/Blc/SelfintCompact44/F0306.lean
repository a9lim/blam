import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1506 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,0,0,1]
certRow f1506s0 on (rf1506 0) using bank tags []
certRow f1506s1 on (rf1506 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1506s2 on (rf1506 2) using bank tags [28,28,28,28,28]
certRow f1506s3 on (rf1506 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1506s4 on (rf1506 4) using bank tags [28,28,28,28,28]
certRow f1506s5 on (rf1506 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1506s6 on (rf1506 6) using bank tags []
certRow f1506s7 on (rf1506 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1506 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,0,0,1] (.cons (f1506s0) (.cons (f1506s1) (.cons (f1506s2) (.cons (f1506s3) (.cons (f1506s4) (.cons (f1506s5) (.cons (f1506s6) (.cons (f1506s7) .nil))))))))
private abbrev rf1507 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,0,1,0]
certRow f1507s0 on (rf1507 0) using bank tags [28,28,28,28,28]
certRow f1507s1 on (rf1507 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1507s2 on (rf1507 2) using bank tags [28,28,28,28,28]
certRow f1507s3 on (rf1507 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1507s4 on (rf1507 4) using bank tags [28,28,28,28,28]
certRow f1507s5 on (rf1507 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1507s6 on (rf1507 6) using bank tags [100,100,100,100,100]
certRow f1507s7 on (rf1507 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1507 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,0,1,0] (.cons (f1507s0) (.cons (f1507s1) (.cons (f1507s2) (.cons (f1507s3) (.cons (f1507s4) (.cons (f1507s5) (.cons (f1507s6) (.cons (f1507s7) .nil))))))))
private abbrev rf1508 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,1,0,0]
certRow f1508s0 on (rf1508 0) using bank tags [28,28,28,28,28,28,28,0,0] except [Floor44.e4823433072026,Floor44.e4823433016730]
certRow f1508s1 on (rf1508 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1508s2 on (rf1508 2) using bank tags [28,28,28,28,28]
certRow f1508s3 on (rf1508 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1508s4 on (rf1508 4) using bank tags [28,28,28,28,28,28,28]
certRow f1508s5 on (rf1508 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1508s6 on (rf1508 6) using bank tags [100,100,100,100,100,0,0] except [Floor44.e4823428690794,Floor44.e4823428676970]
certRow f1508s7 on (rf1508 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1508 (hard : BadRow [Floor44.e4823433072026,Floor44.e4823433016730,Floor44.e4823428690794,Floor44.e4823428676970]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,2,0,1,0,0] (.cons (f1508s0 (.cons (hard.get (by decide : Floor44.e4823433072026 ∈ [Floor44.e4823433072026,Floor44.e4823433016730,Floor44.e4823428690794,Floor44.e4823428676970])) (.cons (hard.get (by decide : Floor44.e4823433016730 ∈ [Floor44.e4823433072026,Floor44.e4823433016730,Floor44.e4823428690794,Floor44.e4823428676970])) .nil))) (.cons (f1508s1) (.cons (f1508s2) (.cons (f1508s3) (.cons (f1508s4) (.cons (f1508s5) (.cons (f1508s6 (.cons (hard.get (by decide : Floor44.e4823428690794 ∈ [Floor44.e4823433072026,Floor44.e4823433016730,Floor44.e4823428690794,Floor44.e4823428676970])) (.cons (hard.get (by decide : Floor44.e4823428676970 ∈ [Floor44.e4823433072026,Floor44.e4823433016730,Floor44.e4823428690794,Floor44.e4823428676970])) .nil))) (.cons (f1508s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
