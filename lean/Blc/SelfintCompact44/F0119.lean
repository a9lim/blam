import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf682 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,2,1]
certRow f682s0 on (rf682 0) using bank tags [3,28,28,3,3,28,28,3,3,28]
certRow f682s1 on (rf682 1) using bank tags [28,28,28,28,28,28,28,28]
certRow f682s2 on (rf682 2) using bank tags [28,28,28,28,28]
certRow f682s3 on (rf682 3) using bank tags [3,28,28,28,28,3,28,3,28,28,3,3,28,28,3,28,3,3,3,28,28,28,28,28,3,28]
certRow f682s4 on (rf682 4) using bank tags []
certRow f682s5 on (rf682 5) using bank tags [3,28,28]
certRow f682s6 on (rf682 6) using bank tags [3,28,28]
certRow f682s7 on (rf682 7) using bank tags [28,28,28,28]
certRow f682s8 on (rf682 8) using bank tags [3,3,1,1]
certRow f682s9 on (rf682 9) using bank tags [28,28,28,3,28,28,19,19]
certRow f682s10 on (rf682 10) using bank tags [3,28,28,3,3,28,28,28,3,3,28,28,6]
certRow f682s11 on (rf682 11) using bank tags [3,28,13,32,13,6,6,13,13,13,1,1,26,1,1,45,86,107]
theorem f682 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,2,1] (.cons (f682s0) (.cons (f682s1) (.cons (f682s2) (.cons (f682s3) (.cons (f682s4) (.cons (f682s5) (.cons (f682s6) (.cons (f682s7) (.cons (f682s8) (.cons (f682s9) (.cons (f682s10) (.cons (f682s11) .nil))))))))))))
certRow f683 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,3,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,6,6,43,0,6] except [Floor44.e4846199880826]
private abbrev rf684 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,0,2]
certRow f684s0 on (rf684 0) using bank tags [28,28]
certRow f684s1 on (rf684 1) using bank tags [28,28,28,28,28,19,19]
certRow f684s2 on (rf684 2) using bank tags [28,28,28,28,28,28,28]
certRow f684s3 on (rf684 3) using bank tags [28,28,28,28]
certRow f684s4 on (rf684 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f684s5 on (rf684 5) using bank tags []
certRow f684s6 on (rf684 6) using bank tags []
certRow f684s7 on (rf684 7) using bank tags [28,28,13,13,13,13,13,22,22,13,13,245,245]
theorem f684 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,0,2] (.cons (f684s0) (.cons (f684s1) (.cons (f684s2) (.cons (f684s3) (.cons (f684s4) (.cons (f684s5) (.cons (f684s6) (.cons (f684s7) .nil))))))))
private abbrev rf685 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,1,1]
certRow f685s0 on (rf685 0) using bank tags [28,28]
certRow f685s1 on (rf685 1) using bank tags [28,28,28]
certRow f685s2 on (rf685 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f685s3 on (rf685 3) using bank tags [28,28,28,28,28]
certRow f685s4 on (rf685 4) using bank tags [28,28,28,28,28,28,28,28,1]
certRow f685s5 on (rf685 5) using bank tags [28,28,28]
certRow f685s6 on (rf685 6) using bank tags [28,28,28]
certRow f685s7 on (rf685 7) using bank tags [28,28,13,13,13,13,13,13,1,1]
theorem f685 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,1,1] (.cons (f685s0) (.cons (f685s1) (.cons (f685s2) (.cons (f685s3) (.cons (f685s4) (.cons (f685s5) (.cons (f685s6) (.cons (f685s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
