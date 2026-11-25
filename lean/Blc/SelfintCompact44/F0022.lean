import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf84 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,1,1]
certRow f84s0 on (rf84 0) using bank tags [35,35,19,6,19,6,19]
certRow f84s1 on (rf84 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f84s2 on (rf84 2) using bank tags [28,28,28,28,28]
certRow f84s3 on (rf84 3) using bank tags [28,28,28,28]
certRow f84s4 on (rf84 4) using bank tags [28,28,28,28,28,35,19]
certRow f84s5 on (rf84 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f84s6 on (rf84 6) using bank tags []
certRow f84s7 on (rf84 7) using bank tags [1,1,45,45,45,19,19,61,19,61,61,19,61,19]
theorem f84 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,1,1] (.cons (f84s0) (.cons (f84s1) (.cons (f84s2) (.cons (f84s3) (.cons (f84s4) (.cons (f84s5) (.cons (f84s6) (.cons (f84s7) .nil))))))))
private abbrev rf85 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,2,0]
certRow f85s0 on (rf85 0) using bank tags [35,35,19,35,19]
certRow f85s1 on (rf85 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f85s2 on (rf85 2) using bank tags [1,1,1]
certRow f85s3 on (rf85 3) using bank tags [1,1,1]
certRow f85s4 on (rf85 4) using bank tags [1,1,1,1,1]
certRow f85s5 on (rf85 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1]
certRow f85s6 on (rf85 6) using bank tags []
certRow f85s7 on (rf85 7) using bank tags [35,35,35,35,35,19,19,35,19,35,35,19,35,19]
theorem f85 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,2,0] (.cons (f85s0) (.cons (f85s1) (.cons (f85s2) (.cons (f85s3) (.cons (f85s4) (.cons (f85s5) (.cons (f85s6) (.cons (f85s7) .nil))))))))
private abbrev rf86 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,2,0,1]
certRow f86s0 on (rf86 0) using bank tags []
certRow f86s1 on (rf86 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f86s2 on (rf86 2) using bank tags [6,6,6,6,6]
certRow f86s3 on (rf86 3) using bank tags [1,1,1,1]
certRow f86s4 on (rf86 4) using bank tags [1,1,1,1,1]
certRow f86s5 on (rf86 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f86s6 on (rf86 6) using bank tags []
certRow f86s7 on (rf86 7) using bank tags [35,19,19,19,19,19,19,19,19,19,19,19,19,19]
theorem f86 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,2,0,1] (.cons (f86s0) (.cons (f86s1) (.cons (f86s2) (.cons (f86s3) (.cons (f86s4) (.cons (f86s5) (.cons (f86s6) (.cons (f86s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
