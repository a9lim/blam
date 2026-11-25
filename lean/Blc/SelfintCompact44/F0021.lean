import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf81 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,0,1,2]
certRow f81s0 on (rf81 0) using bank tags []
certRow f81s1 on (rf81 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,15]
certRow f81s2 on (rf81 2) using bank tags [1,1,6]
certRow f81s3 on (rf81 3) using bank tags [1,1,1]
certRow f81s4 on (rf81 4) using bank tags [1,1,1]
certRow f81s5 on (rf81 5) using bank tags [1,1,1,1,15,1,1,1,1,1,1,1,1,1]
certRow f81s6 on (rf81 6) using bank tags []
certRow f81s7 on (rf81 7) using bank tags [35,35,19,35,19,19,19,19,19,35,19,19,19,19]
theorem f81 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,0,1,2] (.cons (f81s0) (.cons (f81s1) (.cons (f81s2) (.cons (f81s3) (.cons (f81s4) (.cons (f81s5) (.cons (f81s6) (.cons (f81s7) .nil))))))))
private abbrev rf82 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,0,2,1]
certRow f82s0 on (rf82 0) using bank tags []
certRow f82s1 on (rf82 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f82s2 on (rf82 2) using bank tags [6,6,6,6,6]
certRow f82s3 on (rf82 3) using bank tags [6,6,1,1]
certRow f82s4 on (rf82 4) using bank tags [1,1,1,1,1]
certRow f82s5 on (rf82 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f82s6 on (rf82 6) using bank tags []
certRow f82s7 on (rf82 7) using bank tags [35,19,19,19,19,19,19,19,19,19,19,19,19,19]
theorem f82 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,0,2,1] (.cons (f82s0) (.cons (f82s1) (.cons (f82s2) (.cons (f82s3) (.cons (f82s4) (.cons (f82s5) (.cons (f82s6) (.cons (f82s7) .nil))))))))
private abbrev rf83 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,0,2]
certRow f83s0 on (rf83 0) using bank tags []
certRow f83s1 on (rf83 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,15]
certRow f83s2 on (rf83 2) using bank tags [1,1,1,1,1]
certRow f83s3 on (rf83 3) using bank tags [1,1,1,1]
certRow f83s4 on (rf83 4) using bank tags [6,6,1,1,1]
certRow f83s5 on (rf83 5) using bank tags [1,1,1,1,15,1,1,1,1,1,1,1,1,1]
certRow f83s6 on (rf83 6) using bank tags []
certRow f83s7 on (rf83 7) using bank tags [35,35,35,35,35,19,19,35,19,35,35,19,35,19]
theorem f83 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,1,0,2] (.cons (f83s0) (.cons (f83s1) (.cons (f83s2) (.cons (f83s3) (.cons (f83s4) (.cons (f83s5) (.cons (f83s6) (.cons (f83s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
