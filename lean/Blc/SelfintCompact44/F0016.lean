import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf64 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,1,2,1]
certRow f64s0 on (rf64 0) using bank tags [1,1,1,1,1,6,19]
certRow f64s1 on (rf64 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f64s2 on (rf64 2) using bank tags [28,28,28,28,28]
certRow f64s3 on (rf64 3) using bank tags [28,28,28,28,19,19,19]
certRow f64s4 on (rf64 4) using bank tags [28,28,28,28,28]
certRow f64s5 on (rf64 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f64s6 on (rf64 6) using bank tags []
certRow f64s7 on (rf64 7) using bank tags [1,1,1,1,1,1,1,6,6,1,1,1,1,1,35,35,35,6]
theorem f64 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,1,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,1,2,1] (.cons (f64s0) (.cons (f64s1) (.cons (f64s2) (.cons (f64s3) (.cons (f64s4) (.cons (f64s5) (.cons (f64s6) (.cons (f64s7) .nil))))))))
private abbrev rf65 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,0,2]
certRow f65s0 on (rf65 0) using bank tags []
certRow f65s1 on (rf65 1) using bank tags [1,1,1,1,1,1,30,1,1,1,1,1,1,1]
certRow f65s2 on (rf65 2) using bank tags [1,1,1,1,1]
certRow f65s3 on (rf65 3) using bank tags [1,1,1,1]
certRow f65s4 on (rf65 4) using bank tags [1,1,1,1,1]
certRow f65s5 on (rf65 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f65s6 on (rf65 6) using bank tags []
certRow f65s7 on (rf65 7) using bank tags [1,1,1,1,1,6,6,6,6,1,1,1,1,1]
theorem f65 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,0,2] (.cons (f65s0) (.cons (f65s1) (.cons (f65s2) (.cons (f65s3) (.cons (f65s4) (.cons (f65s5) (.cons (f65s6) (.cons (f65s7) .nil))))))))
private abbrev rf66 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,1,1]
certRow f66s0 on (rf66 0) using bank tags [1,1,1,1,1,19,19,1,1]
certRow f66s1 on (rf66 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f66s2 on (rf66 2) using bank tags [28,28,28,28,28]
certRow f66s3 on (rf66 3) using bank tags [28,28,28,28,19,19,19]
certRow f66s4 on (rf66 4) using bank tags [28,28,28,28,28,1,1]
certRow f66s5 on (rf66 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f66s6 on (rf66 6) using bank tags []
certRow f66s7 on (rf66 7) using bank tags [1,32,1,1,1,6,32,1,1,1,1,1,1,1,19,35,19,19]
theorem f66 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,1,1] (.cons (f66s0) (.cons (f66s1) (.cons (f66s2) (.cons (f66s3) (.cons (f66s4) (.cons (f66s5) (.cons (f66s6) (.cons (f66s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
