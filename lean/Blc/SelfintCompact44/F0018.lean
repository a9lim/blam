import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf70 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,1,0,2]
certRow f70s0 on (rf70 0) using bank tags []
certRow f70s1 on (rf70 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f70s2 on (rf70 2) using bank tags [28,28,28,28,28]
certRow f70s3 on (rf70 3) using bank tags [28,28,28,28,19,19,19,19,19,19,19]
certRow f70s4 on (rf70 4) using bank tags [28,28,28,28,28]
certRow f70s5 on (rf70 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f70s6 on (rf70 6) using bank tags []
certRow f70s7 on (rf70 7) using bank tags [1,1,1,1,1,1,1,6,6,1,1,1,1,1,35,35,35,35,35,35,35,19,19,19,19,19,19]
theorem f70 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,1,0,2] (.cons (f70s0) (.cons (f70s1) (.cons (f70s2) (.cons (f70s3) (.cons (f70s4) (.cons (f70s5) (.cons (f70s6) (.cons (f70s7) .nil))))))))
certRow f71 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,1,1,1]) using bank tags []
private abbrev rf72 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,1,2,0]
certRow f72s0 on (rf72 0) using bank tags []
certRow f72s1 on (rf72 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f72s2 on (rf72 2) using bank tags [28,28,28,28,28]
certRow f72s3 on (rf72 3) using bank tags [28,28,28,28,19,19,19,19]
certRow f72s4 on (rf72 4) using bank tags [28,28,28,28,28]
certRow f72s5 on (rf72 5) using bank tags []
certRow f72s6 on (rf72 6) using bank tags []
certRow f72s7 on (rf72 7) using bank tags [1,1,1,1,1,1,1,6,6,35,35,35,35,19,19,19]
theorem f72 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,1,2,0] (.cons (f72s0) (.cons (f72s1) (.cons (f72s2) (.cons (f72s3) (.cons (f72s4) (.cons (f72s5) (.cons (f72s6) (.cons (f72s7) .nil))))))))
private abbrev rf73 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,2,0,1]
certRow f73s0 on (rf73 0) using bank tags [1,1,1,6,19]
certRow f73s1 on (rf73 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f73s2 on (rf73 2) using bank tags [28,28,28,28,28]
certRow f73s3 on (rf73 3) using bank tags [28,28,28,28,19,19,19,19,19,19,19]
certRow f73s4 on (rf73 4) using bank tags [28,28,28,28,28]
certRow f73s5 on (rf73 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f73s6 on (rf73 6) using bank tags []
certRow f73s7 on (rf73 7) using bank tags [1,1,1,1,1,6,6,6,6,1,1,1,1,1,35,35,35,35,35,0,19,19,19,6,19,19,19,19] except [Floor44.e4845208014646]
theorem f73 (hard : BadRow [Floor44.e4845208014646]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,2,0,1] (.cons (f73s0) (.cons (f73s1) (.cons (f73s2) (.cons (f73s3) (.cons (f73s4) (.cons (f73s5) (.cons (f73s6) (.cons (f73s7 (.cons (hard.get (by decide : Floor44.e4845208014646 ∈ [Floor44.e4845208014646])) .nil)) .nil))))))))
end Blc.SelfintSingleObject.Compact44
