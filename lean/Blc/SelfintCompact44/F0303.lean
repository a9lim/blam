import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1492 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,2,0,0]
certRow f1492s0 on (rf1492 0) using bank tags [28,28,28,28,28,28,0] except [Floor44.e4823433010074]
certRow f1492s1 on (rf1492 1) using bank tags [28,28,28,28,28,28,28,28,28,0,0,0] except [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682]
certRow f1492s2 on (rf1492 2) using bank tags [28,28,28]
certRow f1492s3 on (rf1492 3) using bank tags [28,28,28,28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1492s4 on (rf1492 4) using bank tags [28,28,28,28]
certRow f1492s5 on (rf1492 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f1492s6 on (rf1492 6) using bank tags [100,100,100,100,100,0,0] except [Floor44.e4823429691882,Floor44.e4823428675306]
certRow f1492s7 on (rf1492 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f1492 (hard : BadRow [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682,Floor44.e4823433010074,Floor44.e4823429691882,Floor44.e4823428675306]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,2,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,1,2,0,0] (.cons (f1492s0 (.cons (hard.get (by decide : Floor44.e4823433010074 ∈ [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682,Floor44.e4823433010074,Floor44.e4823429691882,Floor44.e4823428675306])) .nil)) (.cons (f1492s1 (.cons (hard.get (by decide : Floor44.e4823437076378 ∈ [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682,Floor44.e4823433010074,Floor44.e4823429691882,Floor44.e4823428675306])) (.cons (hard.get (by decide : Floor44.e4823437075946 ∈ [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682,Floor44.e4823433010074,Floor44.e4823429691882,Floor44.e4823428675306])) (.cons (hard.get (by decide : Floor44.e4823437064682 ∈ [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682,Floor44.e4823433010074,Floor44.e4823429691882,Floor44.e4823428675306])) .nil)))) (.cons (f1492s2) (.cons (f1492s3) (.cons (f1492s4) (.cons (f1492s5) (.cons (f1492s6 (.cons (hard.get (by decide : Floor44.e4823429691882 ∈ [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682,Floor44.e4823433010074,Floor44.e4823429691882,Floor44.e4823428675306])) (.cons (hard.get (by decide : Floor44.e4823428675306 ∈ [Floor44.e4823437076378,Floor44.e4823437075946,Floor44.e4823437064682,Floor44.e4823433010074,Floor44.e4823429691882,Floor44.e4823428675306])) .nil))) (.cons (f1492s7) .nil))))))))
private abbrev rf1493 (i : Nat) := Split43.four 12 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,0,0,1]
certRow f1493s0 on (rf1493 0) using bank tags []
certRow f1493s1 on (rf1493 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1493s2 on (rf1493 2) using bank tags [28,28,28,28,28]
certRow f1493s3 on (rf1493 3) using bank tags [28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1493s4 on (rf1493 4) using bank tags [28,28,28,28,28]
certRow f1493s5 on (rf1493 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1493s6 on (rf1493 6) using bank tags []
certRow f1493s7 on (rf1493 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1493s8 on (rf1493 8) using bank tags []
certRow f1493s9 on (rf1493 9) using bank tags [46,46,0,97,0] except [Floor44.e4823437065526,Floor44.e4823437061974]
certRow f1493s10 on (rf1493 10) using bank tags []
certRow f1493s11 on (rf1493 11) using bank tags [28,28,28,28,28]
theorem f1493 (hard : BadRow [Floor44.e4823437065526,Floor44.e4823437061974]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,2,0,0,1] (.cons (f1493s0) (.cons (f1493s1) (.cons (f1493s2) (.cons (f1493s3) (.cons (f1493s4) (.cons (f1493s5) (.cons (f1493s6) (.cons (f1493s7) (.cons (f1493s8) (.cons (f1493s9 (.cons (hard.get (by decide : Floor44.e4823437065526 ∈ [Floor44.e4823437065526,Floor44.e4823437061974])) (.cons (hard.get (by decide : Floor44.e4823437061974 ∈ [Floor44.e4823437065526,Floor44.e4823437061974])) .nil))) (.cons (f1493s10) (.cons (f1493s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
