import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf708 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,3,1]
certRow f708s0 on (rf708 0) using bank tags [28]
certRow f708s1 on (rf708 1) using bank tags [28,28,28,28,28,3,3,28,1]
certRow f708s2 on (rf708 2) using bank tags [3,3,3,3,28,3,3,28,28,28,28,28,28,22,119]
certRow f708s3 on (rf708 3) using bank tags [28,28,3,28,28,28,3,3]
certRow f708s4 on (rf708 4) using bank tags [3,3,3,1,15]
certRow f708s5 on (rf708 5) using bank tags [28,28,3,28,28,28,28,28,28,28,28]
certRow f708s6 on (rf708 6) using bank tags [3,28,28,28,28]
certRow f708s7 on (rf708 7) using bank tags [28,28,3,28,28,3,28,28,28,3,3,28,28,28,32,1,24,6,24,1,1,1]
theorem f708 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,3,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,3,1] (.cons (f708s0) (.cons (f708s1) (.cons (f708s2) (.cons (f708s3) (.cons (f708s4) (.cons (f708s5) (.cons (f708s6) (.cons (f708s7) .nil))))))))
private abbrev rf709 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,4,0]
certRow f709s0 on (rf709 0) using bank tags []
certRow f709s1 on (rf709 1) using bank tags [28,28,28,28,28,28,28]
certRow f709s2 on (rf709 2) using bank tags [28,28,28,28,28,28,28]
certRow f709s3 on (rf709 3) using bank tags [28,28,28,28,28]
certRow f709s4 on (rf709 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,18,45,216,45]
certRow f709s5 on (rf709 5) using bank tags [28]
certRow f709s6 on (rf709 6) using bank tags []
certRow f709s7 on (rf709 7) using bank tags [28,28,28,13,13,13,13,13,1,6,24]
theorem f709 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,4,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,4,0] (.cons (f709s0) (.cons (f709s1) (.cons (f709s2) (.cons (f709s3) (.cons (f709s4) (.cons (f709s5) (.cons (f709s6) (.cons (f709s7) .nil))))))))
private abbrev rf710 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,0,3]
certRow f710s0 on (rf710 0) using bank tags [28,28,28,28,28,28,1]
certRow f710s1 on (rf710 1) using bank tags [3,3,3,3,3,28,28,1,1]
certRow f710s2 on (rf710 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow f710s3 on (rf710 3) using bank tags [3,3,3,28,3,3,28,28,28,28,28,28]
certRow f710s4 on (rf710 4) using bank tags [3,3,3,3,3,28,28,28]
certRow f710s5 on (rf710 5) using bank tags [3,3,28,28]
certRow f710s6 on (rf710 6) using bank tags [3,3,28,28,28,28]
certRow f710s7 on (rf710 7) using bank tags [3,3,3,3,3,3,3,28,3,3,28,28,28,28,28,28,24,6,35,35,19,6,19]
theorem f710 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,0,3] (.cons (f710s0) (.cons (f710s1) (.cons (f710s2) (.cons (f710s3) (.cons (f710s4) (.cons (f710s5) (.cons (f710s6) (.cons (f710s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
