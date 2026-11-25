import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14648 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,1,0,3,0,0]
certRow g14648s0 on (rg14648 0) using bank tags [28]
certRow g14648s1 on (rg14648 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14648s2 on (rg14648 2) using bank tags [28,28,28,28,28,28,28,28,6,6,6,6,6,6,6]
certRow g14648s3 on (rg14648 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g14648s4 on (rg14648 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14648s5 on (rg14648 5) using bank tags [28,28,28,28]
certRow g14648s6 on (rg14648 6) using bank tags []
certRow g14648s7 on (rg14648 7) using bank tags [28,28,28,28,28,28,28,28,28,29,0,29,0] except [Floor44.e4846201390058,Floor44.e4846201029610]
theorem g14648 (hard : BadRow [Floor44.e4846201390058,Floor44.e4846201029610]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,3,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,1,0,3,0,0] (.cons (g14648s0) (.cons (g14648s1) (.cons (g14648s2) (.cons (g14648s3) (.cons (g14648s4) (.cons (g14648s5) (.cons (g14648s6) (.cons (g14648s7 (.cons (hard.get (by decide : Floor44.e4846201390058 ∈ [Floor44.e4846201390058,Floor44.e4846201029610])) (.cons (hard.get (by decide : Floor44.e4846201029610 ∈ [Floor44.e4846201390058,Floor44.e4846201029610])) .nil))) .nil))))))))
certRow g14649 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,3,0,0]) using bank tags []
private abbrev rg14650 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,1,1,0,0,2]
certRow g14650s0 on (rg14650 0) using bank tags []
certRow g14650s1 on (rg14650 1) using bank tags [28,28]
certRow g14650s2 on (rg14650 2) using bank tags [1,1,1,1,1,1,1,1,1,1,13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,6,6,19,6,0,19,6,6,6,6,6,19,6,19,6,0,19,6,6,6,0,6,29,0,29,0,29,0,19,19,29,0] except [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102]
certRow g14650s3 on (rg14650 3) using bank tags []
certRow g14650s4 on (rg14650 4) using bank tags [28,28,28,28,28,28,28]
certRow g14650s5 on (rg14650 5) using bank tags []
certRow g14650s6 on (rg14650 6) using bank tags [1,1,1,28,28,28,1,28,28,28,28,28,28,1,1,1,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14650s7 on (rg14650 7) using bank tags []
certRow g14650s8 on (rg14650 8) using bank tags [28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,14,14,14,14,14,1,1,1,1,1]
certRow g14650s9 on (rg14650 9) using bank tags [28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28]
certRow g14650s10 on (rg14650 10) using bank tags []
certRow g14650s11 on (rg14650 11) using bank tags [28,28,1,28,28,28]
theorem g14650 (hard : BadRow [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,1,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,1,1,0,0,2] (.cons (g14650s0) (.cons (g14650s1) (.cons (g14650s2 (.cons (hard.get (by decide : Floor44.e4846339809902 ∈ [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102])) (.cons (hard.get (by decide : Floor44.e4846339438766 ∈ [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102])) (.cons (hard.get (by decide : Floor44.e4846363130286 ∈ [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102])) (.cons (hard.get (by decide : Floor44.e4846363317806 ∈ [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102])) (.cons (hard.get (by decide : Floor44.e4846363271790 ∈ [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102])) (.cons (hard.get (by decide : Floor44.e4846363272750 ∈ [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102])) (.cons (hard.get (by decide : Floor44.e4846363261102 ∈ [Floor44.e4846339809902,Floor44.e4846339438766,Floor44.e4846363130286,Floor44.e4846363317806,Floor44.e4846363271790,Floor44.e4846363272750,Floor44.e4846363261102])) .nil)))))))) (.cons (g14650s3) (.cons (g14650s4) (.cons (g14650s5) (.cons (g14650s6) (.cons (g14650s7) (.cons (g14650s8) (.cons (g14650s9) (.cons (g14650s10) (.cons (g14650s11) .nil))))))))))))
certRow g14651 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,1,0,0,2]) using bank tags []
certRow g14652 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,1,0,1,1]) using bank tags []
certRow g14653 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
