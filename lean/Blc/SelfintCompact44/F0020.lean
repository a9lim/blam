import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf77 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,2,0]
certRow f77s0 on (rf77 0) using bank tags [1,1,1,1,1]
certRow f77s1 on (rf77 1) using bank tags [1,1,1,1,1,1,1,1,1,1,30,1,1,1]
certRow f77s2 on (rf77 2) using bank tags [1,1,1,1,1]
certRow f77s3 on (rf77 3) using bank tags [1,1,1,1]
certRow f77s4 on (rf77 4) using bank tags [1,1,1,1,1]
certRow f77s5 on (rf77 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f77s6 on (rf77 6) using bank tags []
certRow f77s7 on (rf77 7) using bank tags [1,1,1,1,1,6,6,35,6,1,1,1,1,1]
theorem f77 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,2,0] (.cons (f77s0) (.cons (f77s1) (.cons (f77s2) (.cons (f77s3) (.cons (f77s4) (.cons (f77s5) (.cons (f77s6) (.cons (f77s7) .nil))))))))
private abbrev rf78 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,1,0,1]
certRow f78s0 on (rf78 0) using bank tags [1,1,1,35,19]
certRow f78s1 on (rf78 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f78s2 on (rf78 2) using bank tags [28,28,28,28,28]
certRow f78s3 on (rf78 3) using bank tags [28,28,28,28,19,19,19,19,19]
certRow f78s4 on (rf78 4) using bank tags [28,28,28,28,28]
certRow f78s5 on (rf78 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f78s6 on (rf78 6) using bank tags []
certRow f78s7 on (rf78 7) using bank tags [1,1,1,1,1,1,1,6,6,1,1,1,1,1,35,35,35,35,35,35]
theorem f78 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,1,0,1] (.cons (f78s0) (.cons (f78s1) (.cons (f78s2) (.cons (f78s3) (.cons (f78s4) (.cons (f78s5) (.cons (f78s6) (.cons (f78s7) .nil))))))))
certRow f79 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,1,1,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,26,1,1,1,1,35,35,35,19,19,19]
private abbrev rf80 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,2,0,0]
certRow f80s0 on (rf80 0) using bank tags [1,1,1]
certRow f80s1 on (rf80 1) using bank tags [1,31,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f80s2 on (rf80 2) using bank tags [1,31,1,1,1]
certRow f80s3 on (rf80 3) using bank tags [1,1,1,1]
certRow f80s4 on (rf80 4) using bank tags []
certRow f80s5 on (rf80 5) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f80s6 on (rf80 6) using bank tags []
certRow f80s7 on (rf80 7) using bank tags [1,1,1,1,1,6,6,1,1,1]
theorem f80 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,2,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,2,0,0] (.cons (f80s0) (.cons (f80s1) (.cons (f80s2) (.cons (f80s3) (.cons (f80s4) (.cons (f80s5) (.cons (f80s6) (.cons (f80s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
