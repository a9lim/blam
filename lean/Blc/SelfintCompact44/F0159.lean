import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf805 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,2,1]
certRow f805s0 on (rf805 0) using bank tags [3]
certRow f805s1 on (rf805 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28]
certRow f805s2 on (rf805 2) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow f805s3 on (rf805 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow f805s4 on (rf805 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f805s5 on (rf805 5) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f805s6 on (rf805 6) using bank tags [3,3,28,28]
certRow f805s7 on (rf805 7) using bank tags [3,3,3,3]
theorem f805 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,2,1] (.cons (f805s0) (.cons (f805s1) (.cons (f805s2) (.cons (f805s3) (.cons (f805s4) (.cons (f805s5) (.cons (f805s6) (.cons (f805s7) .nil))))))))
private abbrev rf806 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,3,0]
certRow f806s0 on (rf806 0) using bank tags [28]
certRow f806s1 on (rf806 1) using bank tags []
certRow f806s2 on (rf806 2) using bank tags [3,3,3,28,3,3,28,28,28,28]
certRow f806s3 on (rf806 3) using bank tags [3,3,3,3,3]
certRow f806s4 on (rf806 4) using bank tags []
certRow f806s5 on (rf806 5) using bank tags [3,28,28,28,28,28,28]
certRow f806s6 on (rf806 6) using bank tags [3,3,3,3,3,28,28]
certRow f806s7 on (rf806 7) using bank tags []
theorem f806 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,3,0] (.cons (f806s0) (.cons (f806s1) (.cons (f806s2) (.cons (f806s3) (.cons (f806s4) (.cons (f806s5) (.cons (f806s6) (.cons (f806s7) .nil))))))))
private abbrev rf807 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,0,2]
certRow f807s0 on (rf807 0) using bank tags [3,3,3]
certRow f807s1 on (rf807 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow f807s2 on (rf807 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f807s3 on (rf807 3) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28]
certRow f807s4 on (rf807 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28]
certRow f807s5 on (rf807 5) using bank tags [3,3,28,28]
certRow f807s6 on (rf807 6) using bank tags [3,3,28,28]
certRow f807s7 on (rf807 7) using bank tags [3,3]
theorem f807 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,0,2] (.cons (f807s0) (.cons (f807s1) (.cons (f807s2) (.cons (f807s3) (.cons (f807s4) (.cons (f807s5) (.cons (f807s6) (.cons (f807s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
