import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf46 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,1,2,2]
certRow f46s0 on (rf46 0) using bank tags []
certRow f46s1 on (rf46 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f46s2 on (rf46 2) using bank tags [1,1,1,1,1]
certRow f46s3 on (rf46 3) using bank tags [1,1,1,1,1,1,1]
certRow f46s4 on (rf46 4) using bank tags [1,1,1,1,1]
certRow f46s5 on (rf46 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f46s6 on (rf46 6) using bank tags []
certRow f46s7 on (rf46 7) using bank tags [35,35,35,35,19,35,35,19,35,19,6,6,6]
theorem f46 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,1,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,1,2,2] (.cons (f46s0) (.cons (f46s1) (.cons (f46s2) (.cons (f46s3) (.cons (f46s4) (.cons (f46s5) (.cons (f46s6) (.cons (f46s7) .nil))))))))
private abbrev rf47 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,2,1,2]
certRow f47s0 on (rf47 0) using bank tags []
certRow f47s1 on (rf47 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f47s2 on (rf47 2) using bank tags [1,1,1,1,1]
certRow f47s3 on (rf47 3) using bank tags [1,1,1,1,1,1,1]
certRow f47s4 on (rf47 4) using bank tags [1,1,1,1,1]
certRow f47s5 on (rf47 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f47s6 on (rf47 6) using bank tags []
certRow f47s7 on (rf47 7) using bank tags [19,35,19,19,19,35,19,19,19,19,6,6,6]
theorem f47 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,2,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,2,1,2] (.cons (f47s0) (.cons (f47s1) (.cons (f47s2) (.cons (f47s3) (.cons (f47s4) (.cons (f47s5) (.cons (f47s6) (.cons (f47s7) .nil))))))))
private abbrev rf48 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,2,2,1]
certRow f48s0 on (rf48 0) using bank tags []
certRow f48s1 on (rf48 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f48s2 on (rf48 2) using bank tags [30,1,1,1,1]
certRow f48s3 on (rf48 3) using bank tags [30,1,30,1,1,1,1]
certRow f48s4 on (rf48 4) using bank tags [1,1,1,1,1]
certRow f48s5 on (rf48 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f48s6 on (rf48 6) using bank tags []
certRow f48s7 on (rf48 7) using bank tags [19,19,19,19,19,19,19,19,19,19,6,6,6]
theorem f48 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,2,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,0,2,2,1] (.cons (f48s0) (.cons (f48s1) (.cons (f48s2) (.cons (f48s3) (.cons (f48s4) (.cons (f48s5) (.cons (f48s6) (.cons (f48s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
