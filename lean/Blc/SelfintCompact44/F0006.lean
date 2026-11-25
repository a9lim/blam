import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf28 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,1,1,2]
certRow f28s0 on (rf28 0) using bank tags []
certRow f28s1 on (rf28 1) using bank tags [6,6,6,6,6,6,6,6,6,6,6,22,6,15]
certRow f28s2 on (rf28 2) using bank tags [6,6,6,6,6]
certRow f28s3 on (rf28 3) using bank tags [22,22,6,6,35,35,35,35,35,1,1,35,1,35,35,1,35,1]
certRow f28s4 on (rf28 4) using bank tags [6,22,6,22,22]
certRow f28s5 on (rf28 5) using bank tags [6,6,22,6,15,6,6,22,22,6,22,6,22,22]
certRow f28s6 on (rf28 6) using bank tags []
certRow f28s7 on (rf28 7) using bank tags [1,1,1,1,1,1,1,1,14,1,1,14,14,14]
theorem f28 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,1,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,1,1,2] (.cons (f28s0) (.cons (f28s1) (.cons (f28s2) (.cons (f28s3) (.cons (f28s4) (.cons (f28s5) (.cons (f28s6) (.cons (f28s7) .nil))))))))
private abbrev rf29 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,1,2,1]
certRow f29s0 on (rf29 0) using bank tags [1,1,1,1,1]
certRow f29s1 on (rf29 1) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,22]
certRow f29s2 on (rf29 2) using bank tags [6,6,6,6,6]
certRow f29s3 on (rf29 3) using bank tags [22,22,6,6,35,35,35,35,35,1,1,35,1,35,35,1,35,1]
certRow f29s4 on (rf29 4) using bank tags [6,22,6,22,35]
certRow f29s5 on (rf29 5) using bank tags [6,6,22,6,22,6,6,22,22,6,22,6,22,22]
certRow f29s6 on (rf29 6) using bank tags []
certRow f29s7 on (rf29 7) using bank tags [1,1,1,1,1,1,1,1,14,1,1,1,1,14]
theorem f29 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,1,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,1,2,1] (.cons (f29s0) (.cons (f29s1) (.cons (f29s2) (.cons (f29s3) (.cons (f29s4) (.cons (f29s5) (.cons (f29s6) (.cons (f29s7) .nil))))))))
certRow f30 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,2,0,2]) using bank tags []
private abbrev rf31 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,2,1,1]
certRow f31s0 on (rf31 0) using bank tags [1,1,1,1,1]
certRow f31s1 on (rf31 1) using bank tags [6,22,6,6,6,6,6,22,6,22,6,6,6,6]
certRow f31s2 on (rf31 2) using bank tags [6,22,6,6,6]
certRow f31s3 on (rf31 3) using bank tags [22,22,22,22,35,35,35,35,35,1,1,1,1,35,35,1,1,1]
certRow f31s4 on (rf31 4) using bank tags [35,22,22,35,35]
certRow f31s5 on (rf31 5) using bank tags [6,6,22,35,6,6,6,22,22,35,22,35,35,22]
certRow f31s6 on (rf31 6) using bank tags []
certRow f31s7 on (rf31 7) using bank tags [1,15,1,1,1,1,30,1,1,1,1,1,1,1]
theorem f31 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,2,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,2,1,1] (.cons (f31s0) (.cons (f31s1) (.cons (f31s2) (.cons (f31s3) (.cons (f31s4) (.cons (f31s5) (.cons (f31s6) (.cons (f31s7) .nil))))))))
certRow f32 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
