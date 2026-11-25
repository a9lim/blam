import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13372 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 4 [0,1,0,2]
certRow g13372s0 on (rg13372 0) using bank tags []
certRow g13372s1 on (rg13372 1) using bank tags [28,28,57,1,28,28,57,15,14,28,28,14,28,28,57,1,28,28,57,26,15,28,28,15]
certRow g13372s2 on (rg13372 2) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13372s3 on (rg13372 3) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1,28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13372s4 on (rg13372 4) using bank tags []
certRow g13372s5 on (rg13372 5) using bank tags [28,28,57,6,28,28,57,32,15,28,28,15,28,28,57,6,28,28,57,31,1,28,28,30,29,29,29,29,29,29,6,29,0,29,0,29,22,29,29,29,29,29,29,6,29,0,29,6,29,22,29,0,29,29,29,29,29,29,6,29,6,29,22,29,29,29,29,29,29,29,29,29,29,29,6,29,0,29,169,29,80,29,29,29,29,29,29,6,29,161,29,173,29,80,29,91,29,29,29,29,29,29,0,29,0,29,96,29,29,29,29,29] except [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510]
certRow g13372s6 on (rg13372 6) using bank tags []
certRow g13372s7 on (rg13372 7) using bank tags []
certRow g13372s8 on (rg13372 8) using bank tags []
certRow g13372s9 on (rg13372 9) using bank tags []
certRow g13372s10 on (rg13372 10) using bank tags []
certRow g13372s11 on (rg13372 11) using bank tags []
theorem g13372 (hard : BadRow [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 4 [0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 4 [0,1,0,2] (.cons (g13372s0) (.cons (g13372s1) (.cons (g13372s2) (.cons (g13372s3) (.cons (g13372s4) (.cons (g13372s5 (.cons (hard.get (by decide : Floor44.e4816454291054 ∈ [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510])) (.cons (hard.get (by decide : Floor44.e4836586950254 ∈ [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510])) (.cons (hard.get (by decide : Floor44.e4816487845486 ∈ [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510])) (.cons (hard.get (by decide : Floor44.e4777833139822 ∈ [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510])) (.cons (hard.get (by decide : Floor44.e4816454290350 ∈ [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510])) (.cons (hard.get (by decide : Floor44.e4818098457518 ∈ [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510])) (.cons (hard.get (by decide : Floor44.e4816622062510 ∈ [Floor44.e4816454291054,Floor44.e4836586950254,Floor44.e4816487845486,Floor44.e4777833139822,Floor44.e4816454290350,Floor44.e4818098457518,Floor44.e4816622062510])) .nil)))))))) (.cons (g13372s6) (.cons (g13372s7) (.cons (g13372s8) (.cons (g13372s9) (.cons (g13372s10) (.cons (g13372s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
