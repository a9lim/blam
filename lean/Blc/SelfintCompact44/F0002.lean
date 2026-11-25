import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf11 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,1,2,2]
certRow f11s0 on (rf11 0) using bank tags []
certRow f11s1 on (rf11 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f11s2 on (rf11 2) using bank tags [1,1,1,1,1]
certRow f11s3 on (rf11 3) using bank tags [1,1,1,1,1,1,1,35,35,35,35,35,6,6,35,6,35,35,6,35,6,19,19,19]
certRow f11s4 on (rf11 4) using bank tags [1,1,1,1,1]
certRow f11s5 on (rf11 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f11s6 on (rf11 6) using bank tags []
certRow f11s7 on (rf11 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem f11 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,1,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,1,2,2] (.cons (f11s0) (.cons (f11s1) (.cons (f11s2) (.cons (f11s3) (.cons (f11s4) (.cons (f11s5) (.cons (f11s6) (.cons (f11s7) .nil))))))))
private abbrev rf12 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,2,1,2]
certRow f12s0 on (rf12 0) using bank tags []
certRow f12s1 on (rf12 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f12s2 on (rf12 2) using bank tags [1,1,1,1,1]
certRow f12s3 on (rf12 3) using bank tags [1,1,1,1,1,1,1,35,35,35,35,35,6,6,6,6,35,35,6,6,6,19,19,19]
certRow f12s4 on (rf12 4) using bank tags [1,1,1,1,1]
certRow f12s5 on (rf12 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f12s6 on (rf12 6) using bank tags []
certRow f12s7 on (rf12 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem f12 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,2,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,2,1,2] (.cons (f12s0) (.cons (f12s1) (.cons (f12s2) (.cons (f12s3) (.cons (f12s4) (.cons (f12s5) (.cons (f12s6) (.cons (f12s7) .nil))))))))
private abbrev rf13 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,2,2,1]
certRow f13s0 on (rf13 0) using bank tags [1,1,1,1,1]
certRow f13s1 on (rf13 1) using bank tags [1,1,1,1,1,30,1,1,1,1,1,1,1,1]
certRow f13s2 on (rf13 2) using bank tags [1,1,1,1,1]
certRow f13s3 on (rf13 3) using bank tags [30,1,1,1,1,1,1,35,35,35,35,35,6,6,6,6,6,6,6,6,6,19,19,19]
certRow f13s4 on (rf13 4) using bank tags [1,1,1,1,1]
certRow f13s5 on (rf13 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f13s6 on (rf13 6) using bank tags []
certRow f13s7 on (rf13 7) using bank tags [31,1,1,1,1,31,1,1,1,1,1,1,1,1,1,1,1]
theorem f13 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,2,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,0,2,2,1] (.cons (f13s0) (.cons (f13s1) (.cons (f13s2) (.cons (f13s3) (.cons (f13s4) (.cons (f13s5) (.cons (f13s6) (.cons (f13s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
