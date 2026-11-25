import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf757 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,3,1]
certRow f757s0 on (rf757 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f757s1 on (rf757 1) using bank tags [3,3,3,3,3,28,28,11]
certRow f757s2 on (rf757 2) using bank tags [3,3,28,28,28]
certRow f757s3 on (rf757 3) using bank tags [3,3,3,28,28,3,3,28,28,28,3,3,32,1,1,32,1,1,1,1]
certRow f757s4 on (rf757 4) using bank tags [3,3,3,3,3]
certRow f757s5 on (rf757 5) using bank tags [3,28,28,3,28]
certRow f757s6 on (rf757 6) using bank tags [28,28,3,3,28,28,47,1]
certRow f757s7 on (rf757 7) using bank tags [3,28,3,28]
certRow f757s8 on (rf757 8) using bank tags [28]
certRow f757s9 on (rf757 9) using bank tags [28,28,28,28,28,3,3,3,3,28]
certRow f757s10 on (rf757 10) using bank tags [3,3,3,28,3,3,28]
certRow f757s11 on (rf757 11) using bank tags []
theorem f757 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,3,1] (.cons (f757s0) (.cons (f757s1) (.cons (f757s2) (.cons (f757s3) (.cons (f757s4) (.cons (f757s5) (.cons (f757s6) (.cons (f757s7) (.cons (f757s8) (.cons (f757s9) (.cons (f757s10) (.cons (f757s11) .nil))))))))))))
private abbrev rf758 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,4,0]
certRow f758s0 on (rf758 0) using bank tags []
certRow f758s1 on (rf758 1) using bank tags [28,28,28,28,28]
certRow f758s2 on (rf758 2) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f758s3 on (rf758 3) using bank tags [28,28,28,28,28]
certRow f758s4 on (rf758 4) using bank tags [28,28,28,28,28,32,1]
certRow f758s5 on (rf758 5) using bank tags [28,28,28,28,28,28,28]
certRow f758s6 on (rf758 6) using bank tags []
certRow f758s7 on (rf758 7) using bank tags [13,13,13,13,13,1,1,1,1,1,1]
theorem f758 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,4,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,4,0] (.cons (f758s0) (.cons (f758s1) (.cons (f758s2) (.cons (f758s3) (.cons (f758s4) (.cons (f758s5) (.cons (f758s6) (.cons (f758s7) .nil))))))))
private abbrev rf759 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,0,3]
certRow f759s0 on (rf759 0) using bank tags [28,28,28,28]
certRow f759s1 on (rf759 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,11,11]
certRow f759s2 on (rf759 2) using bank tags [3,3,28,28,28,28,28,28,3,3,3,3,28,28]
certRow f759s3 on (rf759 3) using bank tags [3,3,3,3,3,28,3,3,28]
certRow f759s4 on (rf759 4) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow f759s5 on (rf759 5) using bank tags [3,3]
certRow f759s6 on (rf759 6) using bank tags [28,28,28,28]
certRow f759s7 on (rf759 7) using bank tags [3,3,1,1,6,1]
theorem f759 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,0,3] (.cons (f759s0) (.cons (f759s1) (.cons (f759s2) (.cons (f759s3) (.cons (f759s4) (.cons (f759s5) (.cons (f759s6) (.cons (f759s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
