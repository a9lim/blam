import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf711 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,1,2]
certRow f711s0 on (rf711 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f711s1 on (rf711 1) using bank tags [28,28,28,28,28,28,28,1]
certRow f711s2 on (rf711 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow f711s3 on (rf711 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow f711s4 on (rf711 4) using bank tags [3,3,3,3,3]
certRow f711s5 on (rf711 5) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow f711s6 on (rf711 6) using bank tags [3,3,28,1,1]
certRow f711s7 on (rf711 7) using bank tags [3,3,3,3]
certRow f711s8 on (rf711 8) using bank tags [3,3,3,3,28,28,28]
certRow f711s9 on (rf711 9) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f711s10 on (rf711 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f711s11 on (rf711 11) using bank tags [28,28,28,35,35,19,35,19,24,6,24,6,19,6]
theorem f711 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,1,2] (.cons (f711s0) (.cons (f711s1) (.cons (f711s2) (.cons (f711s3) (.cons (f711s4) (.cons (f711s5) (.cons (f711s6) (.cons (f711s7) (.cons (f711s8) (.cons (f711s9) (.cons (f711s10) (.cons (f711s11) .nil))))))))))))
private abbrev rf712 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,2,1]
certRow f712s0 on (rf712 0) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow f712s1 on (rf712 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,1]
certRow f712s2 on (rf712 2) using bank tags [3,3,28,28,28,28,28,28,28,28]
certRow f712s3 on (rf712 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow f712s4 on (rf712 4) using bank tags [3,3,3,3,3]
certRow f712s5 on (rf712 5) using bank tags [3,3,3,3,3,3,28,28]
certRow f712s6 on (rf712 6) using bank tags [3,3,28,28,28]
certRow f712s7 on (rf712 7) using bank tags [3,3,3,3]
certRow f712s8 on (rf712 8) using bank tags [3,3,3,3,1,15]
certRow f712s9 on (rf712 9) using bank tags [3,3,3,3,28,28,28,28]
certRow f712s10 on (rf712 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,145]
certRow f712s11 on (rf712 11) using bank tags [35,35,24,24,24,6,19,6]
theorem f712 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,2,1] (.cons (f712s0) (.cons (f712s1) (.cons (f712s2) (.cons (f712s3) (.cons (f712s4) (.cons (f712s5) (.cons (f712s6) (.cons (f712s7) (.cons (f712s8) (.cons (f712s9) (.cons (f712s10) (.cons (f712s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
