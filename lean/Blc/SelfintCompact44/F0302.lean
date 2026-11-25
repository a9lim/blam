import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1487 (i : Nat) := Split43.four 12 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,0,0,2]
certRow f1487s0 on (rf1487 0) using bank tags []
certRow f1487s1 on (rf1487 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1487s2 on (rf1487 2) using bank tags [28,28,28,28,28]
certRow f1487s3 on (rf1487 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1487s4 on (rf1487 4) using bank tags [28,28,28,28,28]
certRow f1487s5 on (rf1487 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1487s6 on (rf1487 6) using bank tags []
certRow f1487s7 on (rf1487 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1487s8 on (rf1487 8) using bank tags []
certRow f1487s9 on (rf1487 9) using bank tags [121,0,0,0,0] except [Floor44.e4823437075886,Floor44.e4823437064814,Floor44.e4823437064622,Floor44.e4823437061806]
certRow f1487s10 on (rf1487 10) using bank tags []
certRow f1487s11 on (rf1487 11) using bank tags [28,28,28,28,28]
theorem f1487 (hard : BadRow [Floor44.e4823437075886,Floor44.e4823437064814,Floor44.e4823437064622,Floor44.e4823437061806]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,0,0,2] (.cons (f1487s0) (.cons (f1487s1) (.cons (f1487s2) (.cons (f1487s3) (.cons (f1487s4) (.cons (f1487s5) (.cons (f1487s6) (.cons (f1487s7) (.cons (f1487s8) (.cons (f1487s9 (.cons (hard.get (by decide : Floor44.e4823437075886 ∈ [Floor44.e4823437075886,Floor44.e4823437064814,Floor44.e4823437064622,Floor44.e4823437061806])) (.cons (hard.get (by decide : Floor44.e4823437064814 ∈ [Floor44.e4823437075886,Floor44.e4823437064814,Floor44.e4823437064622,Floor44.e4823437061806])) (.cons (hard.get (by decide : Floor44.e4823437064622 ∈ [Floor44.e4823437075886,Floor44.e4823437064814,Floor44.e4823437064622,Floor44.e4823437061806])) (.cons (hard.get (by decide : Floor44.e4823437061806 ∈ [Floor44.e4823437075886,Floor44.e4823437064814,Floor44.e4823437064622,Floor44.e4823437061806])) .nil))))) (.cons (f1487s10) (.cons (f1487s11) .nil))))))))))))
certRow f1488 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,0,1,1]) using bank tags []
private abbrev rf1489 (i : Nat) := Split43.four 12 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,0,2,0]
certRow f1489s0 on (rf1489 0) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1489s1 on (rf1489 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1489s2 on (rf1489 2) using bank tags [28,28,28,28,28]
certRow f1489s3 on (rf1489 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1489s4 on (rf1489 4) using bank tags [28,28,28,28,28]
certRow f1489s5 on (rf1489 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1489s6 on (rf1489 6) using bank tags [100,100,100,100,100,100,100,100,100,110,0] except [Floor44.e4823429689018]
certRow f1489s7 on (rf1489 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1489s8 on (rf1489 8) using bank tags []
certRow f1489s9 on (rf1489 9) using bank tags [6,6,0,0,0] except [Floor44.e4823437064826,Floor44.e4823437064634,Floor44.e4823437061818]
certRow f1489s10 on (rf1489 10) using bank tags []
certRow f1489s11 on (rf1489 11) using bank tags [28,28,28,28,28]
theorem f1489 (hard : BadRow [Floor44.e4823437064826,Floor44.e4823437064634,Floor44.e4823437061818,Floor44.e4823429689018]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,0,2,0] (.cons (f1489s0) (.cons (f1489s1) (.cons (f1489s2) (.cons (f1489s3) (.cons (f1489s4) (.cons (f1489s5) (.cons (f1489s6 (.cons (hard.get (by decide : Floor44.e4823429689018 ∈ [Floor44.e4823437064826,Floor44.e4823437064634,Floor44.e4823437061818,Floor44.e4823429689018])) .nil)) (.cons (f1489s7) (.cons (f1489s8) (.cons (f1489s9 (.cons (hard.get (by decide : Floor44.e4823437064826 ∈ [Floor44.e4823437064826,Floor44.e4823437064634,Floor44.e4823437061818,Floor44.e4823429689018])) (.cons (hard.get (by decide : Floor44.e4823437064634 ∈ [Floor44.e4823437064826,Floor44.e4823437064634,Floor44.e4823437061818,Floor44.e4823429689018])) (.cons (hard.get (by decide : Floor44.e4823437061818 ∈ [Floor44.e4823437064826,Floor44.e4823437064634,Floor44.e4823437061818,Floor44.e4823429689018])) .nil)))) (.cons (f1489s10) (.cons (f1489s11) .nil))))))))))))
certRow f1490 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,1,0,1]) using bank tags []
certRow f1491 on (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
