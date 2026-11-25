import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf794 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,1,2]
certRow f794s0 on (rf794 0) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f794s1 on (rf794 1) using bank tags [3,3,3,3,3]
certRow f794s2 on (rf794 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f794s3 on (rf794 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f794s4 on (rf794 4) using bank tags [3,3,3,3,3]
certRow f794s5 on (rf794 5) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow f794s6 on (rf794 6) using bank tags []
certRow f794s7 on (rf794 7) using bank tags [3,3,3,3]
certRow f794s8 on (rf794 8) using bank tags [3,3,28,28,28,28]
certRow f794s9 on (rf794 9) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f794s10 on (rf794 10) using bank tags [3,3,3,3,3,3,3,3]
certRow f794s11 on (rf794 11) using bank tags [28,28,28,28,28]
theorem f794 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,1,2] (.cons (f794s0) (.cons (f794s1) (.cons (f794s2) (.cons (f794s3) (.cons (f794s4) (.cons (f794s5) (.cons (f794s6) (.cons (f794s7) (.cons (f794s8) (.cons (f794s9) (.cons (f794s10) (.cons (f794s11) .nil))))))))))))
private abbrev rf795 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,2,1]
certRow f795s0 on (rf795 0) using bank tags [3,3]
certRow f795s1 on (rf795 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f795s2 on (rf795 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f795s3 on (rf795 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f795s4 on (rf795 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f795s5 on (rf795 5) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f795s6 on (rf795 6) using bank tags []
certRow f795s7 on (rf795 7) using bank tags [3,3,3,3]
theorem f795 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,2,1] (.cons (f795s0) (.cons (f795s1) (.cons (f795s2) (.cons (f795s3) (.cons (f795s4) (.cons (f795s5) (.cons (f795s6) (.cons (f795s7) .nil))))))))
private abbrev rf796 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,3,0]
certRow f796s0 on (rf796 0) using bank tags [28,28]
certRow f796s1 on (rf796 1) using bank tags []
certRow f796s2 on (rf796 2) using bank tags [3,3,3,28,3,3,3,28,28,28,28,28,28]
certRow f796s3 on (rf796 3) using bank tags [3,3,28,3,3,28]
certRow f796s4 on (rf796 4) using bank tags []
certRow f796s5 on (rf796 5) using bank tags [3,28,28,28,28,28,28,28,28]
certRow f796s6 on (rf796 6) using bank tags [3,3,3,3]
certRow f796s7 on (rf796 7) using bank tags []
theorem f796 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,3,0] (.cons (f796s0) (.cons (f796s1) (.cons (f796s2) (.cons (f796s3) (.cons (f796s4) (.cons (f796s5) (.cons (f796s6) (.cons (f796s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
