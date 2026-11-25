import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf825 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,2,1]
certRow f825s0 on (rf825 0) using bank tags []
certRow f825s1 on (rf825 1) using bank tags [28,28,28,28,28]
certRow f825s2 on (rf825 2) using bank tags [28,28,28,28,28]
certRow f825s3 on (rf825 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f825s4 on (rf825 4) using bank tags []
certRow f825s5 on (rf825 5) using bank tags [28,28,28,28]
certRow f825s6 on (rf825 6) using bank tags []
certRow f825s7 on (rf825 7) using bank tags [28,28,28,28]
theorem f825 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,2,1] (.cons (f825s0) (.cons (f825s1) (.cons (f825s2) (.cons (f825s3) (.cons (f825s4) (.cons (f825s5) (.cons (f825s6) (.cons (f825s7) .nil))))))))
certRow f826 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,3,0]) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f827 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,1,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf828 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [3,0,1,1,1]
certRow f828s0 on (rf828 0) using bank tags [28,28]
certRow f828s1 on (rf828 1) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f828s2 on (rf828 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f828s3 on (rf828 3) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f828s4 on (rf828 4) using bank tags [3,3,3,3,3]
certRow f828s5 on (rf828 5) using bank tags [28,28,28,28]
certRow f828s6 on (rf828 6) using bank tags []
certRow f828s7 on (rf828 7) using bank tags [28,28,28,28]
theorem f828 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,1,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [3,0,1,1,1] (.cons (f828s0) (.cons (f828s1) (.cons (f828s2) (.cons (f828s3) (.cons (f828s4) (.cons (f828s5) (.cons (f828s6) (.cons (f828s7) .nil))))))))
certRow f829 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,1,2,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f830 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,2,0,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f831 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,2,1,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f832 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,3,0,0]) using bank tags [28,28,28,28,28,28,28]
certRow f833 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,1,0,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
end Blc.SelfintSingleObject.Compact44
