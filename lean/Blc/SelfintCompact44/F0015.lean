import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf61 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,2,1,0]
certRow f61s0 on (rf61 0) using bank tags [19,19,19]
certRow f61s1 on (rf61 1) using bank tags [1,31,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f61s2 on (rf61 2) using bank tags [30,31,1,1,1]
certRow f61s3 on (rf61 3) using bank tags [1,1,1,1,1,1,1]
certRow f61s4 on (rf61 4) using bank tags [1,1,1,1,1]
certRow f61s5 on (rf61 5) using bank tags [1,1,1,1,1,30,1,1,1,1,1,1,1,1]
certRow f61s6 on (rf61 6) using bank tags []
certRow f61s7 on (rf61 7) using bank tags [35,35,19,19,19,19,19,19,19,19,6,6,6]
theorem f61 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,2,1,0] (.cons (f61s0) (.cons (f61s1) (.cons (f61s2) (.cons (f61s3) (.cons (f61s4) (.cons (f61s5) (.cons (f61s6) (.cons (f61s7) .nil))))))))
private abbrev rf62 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,0,2,2]
certRow f62s0 on (rf62 0) using bank tags []
certRow f62s1 on (rf62 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f62s2 on (rf62 2) using bank tags [1,1,1,1,1]
certRow f62s3 on (rf62 3) using bank tags [1,1,1,1]
certRow f62s4 on (rf62 4) using bank tags [1,1,1,1,1]
certRow f62s5 on (rf62 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f62s6 on (rf62 6) using bank tags []
certRow f62s7 on (rf62 7) using bank tags [1,1,1,1,1,6,6,6,6,1,1,1,1,1]
theorem f62 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,0,2,2] (.cons (f62s0) (.cons (f62s1) (.cons (f62s2) (.cons (f62s3) (.cons (f62s4) (.cons (f62s5) (.cons (f62s6) (.cons (f62s7) .nil))))))))
private abbrev rf63 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,1,1,2]
certRow f63s0 on (rf63 0) using bank tags []
certRow f63s1 on (rf63 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f63s2 on (rf63 2) using bank tags [28,28,28,28,28]
certRow f63s3 on (rf63 3) using bank tags [28,28,28,28,19,19,19]
certRow f63s4 on (rf63 4) using bank tags [28,28,28,28,28]
certRow f63s5 on (rf63 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f63s6 on (rf63 6) using bank tags []
certRow f63s7 on (rf63 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,35,35,35]
theorem f63 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,1,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,1,1,2] (.cons (f63s0) (.cons (f63s1) (.cons (f63s2) (.cons (f63s3) (.cons (f63s4) (.cons (f63s5) (.cons (f63s6) (.cons (f63s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
