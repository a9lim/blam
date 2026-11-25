import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf751 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,2,0]
certRow f751s0 on (rf751 0) using bank tags [3,3]
certRow f751s1 on (rf751 1) using bank tags [3]
certRow f751s2 on (rf751 2) using bank tags [3,28,28,3,3,28,28,28,3,3,3,28,28,28,28,28,28]
certRow f751s3 on (rf751 3) using bank tags [28,3,3,28,28,3]
certRow f751s4 on (rf751 4) using bank tags [3,3,3,3,18,16]
certRow f751s5 on (rf751 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f751s6 on (rf751 6) using bank tags [3,3,3]
certRow f751s7 on (rf751 7) using bank tags [1,6,45,6]
theorem f751 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,2,0] (.cons (f751s0) (.cons (f751s1) (.cons (f751s2) (.cons (f751s3) (.cons (f751s4) (.cons (f751s5) (.cons (f751s6) (.cons (f751s7) .nil))))))))
private abbrev rf752 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,4,0,1]
certRow f752s0 on (rf752 0) using bank tags [28,28]
certRow f752s1 on (rf752 1) using bank tags [28,28,28,28,28]
certRow f752s2 on (rf752 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f752s3 on (rf752 3) using bank tags [28,28,28,28]
certRow f752s4 on (rf752 4) using bank tags [28,28,28,28,28]
certRow f752s5 on (rf752 5) using bank tags [28,28,28]
certRow f752s6 on (rf752 6) using bank tags []
certRow f752s7 on (rf752 7) using bank tags [13,13,13,13,13,13,13,1,1,6,45]
theorem f752 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,4,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,4,0,1] (.cons (f752s0) (.cons (f752s1) (.cons (f752s2) (.cons (f752s3) (.cons (f752s4) (.cons (f752s5) (.cons (f752s6) (.cons (f752s7) .nil))))))))
private abbrev rf753 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,4,1,0]
certRow f753s0 on (rf753 0) using bank tags [28,28]
certRow f753s1 on (rf753 1) using bank tags [28,28,28,28,28]
certRow f753s2 on (rf753 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f753s3 on (rf753 3) using bank tags [28,28,28,28,28]
certRow f753s4 on (rf753 4) using bank tags [28,28,28,28,28,18]
certRow f753s5 on (rf753 5) using bank tags [28,28,28]
certRow f753s6 on (rf753 6) using bank tags []
certRow f753s7 on (rf753 7) using bank tags [13,13,13,13,1,1,6,102]
theorem f753 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,4,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,4,1,0] (.cons (f753s0) (.cons (f753s1) (.cons (f753s2) (.cons (f753s3) (.cons (f753s4) (.cons (f753s5) (.cons (f753s6) (.cons (f753s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
