import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1494 (i : Nat) := Split43.four 12 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,0,1,0]
certRow f1494s0 on (rf1494 0) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1494s1 on (rf1494 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1494s2 on (rf1494 2) using bank tags [28,28,28,28,28]
certRow f1494s3 on (rf1494 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1494s4 on (rf1494 4) using bank tags [28,28,28,28,28]
certRow f1494s5 on (rf1494 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1494s6 on (rf1494 6) using bank tags [100,100,100,100,100,100,100,100,100,97,0] except [Floor44.e4823429689178]
certRow f1494s7 on (rf1494 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1494s8 on (rf1494 8) using bank tags []
certRow f1494s9 on (rf1494 9) using bank tags [46,46,0,0,0] except [Floor44.e4823437065530,Floor44.e4823437065434,Floor44.e4823437061978]
certRow f1494s10 on (rf1494 10) using bank tags []
certRow f1494s11 on (rf1494 11) using bank tags [28,28,28,28,28]
theorem f1494 (hard : BadRow [Floor44.e4823437065530,Floor44.e4823437065434,Floor44.e4823437061978,Floor44.e4823429689178]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,0,1,0] (.cons (f1494s0) (.cons (f1494s1) (.cons (f1494s2) (.cons (f1494s3) (.cons (f1494s4) (.cons (f1494s5) (.cons (f1494s6 (.cons (hard.get (by decide : Floor44.e4823429689178 ∈ [Floor44.e4823437065530,Floor44.e4823437065434,Floor44.e4823437061978,Floor44.e4823429689178])) .nil)) (.cons (f1494s7) (.cons (f1494s8) (.cons (f1494s9 (.cons (hard.get (by decide : Floor44.e4823437065530 ∈ [Floor44.e4823437065530,Floor44.e4823437065434,Floor44.e4823437061978,Floor44.e4823429689178])) (.cons (hard.get (by decide : Floor44.e4823437065434 ∈ [Floor44.e4823437065530,Floor44.e4823437065434,Floor44.e4823437061978,Floor44.e4823429689178])) (.cons (hard.get (by decide : Floor44.e4823437061978 ∈ [Floor44.e4823437065530,Floor44.e4823437065434,Floor44.e4823437061978,Floor44.e4823429689178])) .nil)))) (.cons (f1494s10) (.cons (f1494s11) .nil))))))))))))
private abbrev rf1495 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,1,0,0]
certRow f1495s0 on (rf1495 0) using bank tags [28,28,28,28,28,28,0] except [Floor44.e4823433010586]
certRow f1495s1 on (rf1495 1) using bank tags [28,28,28,28,28,28,28,28,28,46,46,0] except [Floor44.e4823437065450]
certRow f1495s2 on (rf1495 2) using bank tags [28,28,28]
certRow f1495s3 on (rf1495 3) using bank tags [28,28,28,28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1495s4 on (rf1495 4) using bank tags [28,28,28,28]
certRow f1495s5 on (rf1495 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1495s6 on (rf1495 6) using bank tags [100,100,100,100,100,97,0] except [Floor44.e4823428675434]
certRow f1495s7 on (rf1495 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1495 (hard : BadRow [Floor44.e4823437065450,Floor44.e4823433010586,Floor44.e4823428675434]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,1,0,0] (.cons (f1495s0 (.cons (hard.get (by decide : Floor44.e4823433010586 ∈ [Floor44.e4823437065450,Floor44.e4823433010586,Floor44.e4823428675434])) .nil)) (.cons (f1495s1 (.cons (hard.get (by decide : Floor44.e4823437065450 ∈ [Floor44.e4823437065450,Floor44.e4823433010586,Floor44.e4823428675434])) .nil)) (.cons (f1495s2) (.cons (f1495s3) (.cons (f1495s4) (.cons (f1495s5) (.cons (f1495s6 (.cons (hard.get (by decide : Floor44.e4823428675434 ∈ [Floor44.e4823437065450,Floor44.e4823433010586,Floor44.e4823428675434])) .nil)) (.cons (f1495s7) .nil))))))))
private abbrev rf1496 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,0,0,2]
certRow f1496s0 on (rf1496 0) using bank tags []
certRow f1496s1 on (rf1496 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1496s2 on (rf1496 2) using bank tags [28,28,28,28,28]
certRow f1496s3 on (rf1496 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1496s4 on (rf1496 4) using bank tags [28,28,28,28,28]
certRow f1496s5 on (rf1496 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1496s6 on (rf1496 6) using bank tags []
certRow f1496s7 on (rf1496 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1496 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,0,0,2] (.cons (f1496s0) (.cons (f1496s1) (.cons (f1496s2) (.cons (f1496s3) (.cons (f1496s4) (.cons (f1496s5) (.cons (f1496s6) (.cons (f1496s7) .nil))))))))
certRow f1497 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,1,0,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
