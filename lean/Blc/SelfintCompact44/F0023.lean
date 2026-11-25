import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf87 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,2,1,0]
certRow f87s0 on (rf87 0) using bank tags [35,19,19,19,19]
certRow f87s1 on (rf87 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f87s2 on (rf87 2) using bank tags [6,6,6,6,6]
certRow f87s3 on (rf87 3) using bank tags [1,1,1,1]
certRow f87s4 on (rf87 4) using bank tags [1,1,1,1,1]
certRow f87s5 on (rf87 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f87s6 on (rf87 6) using bank tags []
certRow f87s7 on (rf87 7) using bank tags [35,35,19,35,19,19,19,19,19,35,19,19,19,19]
theorem f87 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,0,2,1,0] (.cons (f87s0) (.cons (f87s1) (.cons (f87s2) (.cons (f87s3) (.cons (f87s4) (.cons (f87s5) (.cons (f87s6) (.cons (f87s7) .nil))))))))
private abbrev rf88 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,0,2]
certRow f88s0 on (rf88 0) using bank tags []
certRow f88s1 on (rf88 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,15]
certRow f88s2 on (rf88 2) using bank tags [1,1,1,1,1]
certRow f88s3 on (rf88 3) using bank tags [6,6,1,1]
certRow f88s4 on (rf88 4) using bank tags [6,6,1,1,1]
certRow f88s5 on (rf88 5) using bank tags [1,1,1,1,15,1,1,1,1,1,1,1,1,1]
certRow f88s6 on (rf88 6) using bank tags []
certRow f88s7 on (rf88 7) using bank tags [35,35,35,35,35,6,6,35,6,35,35,6,35,6]
theorem f88 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,0,2] (.cons (f88s0) (.cons (f88s1) (.cons (f88s2) (.cons (f88s3) (.cons (f88s4) (.cons (f88s5) (.cons (f88s6) (.cons (f88s7) .nil))))))))
private abbrev rf89 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,1,1]
certRow f89s0 on (rf89 0) using bank tags [6,6,6,6,6,6]
certRow f89s1 on (rf89 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f89s2 on (rf89 2) using bank tags [28,28,28,28,28]
certRow f89s3 on (rf89 3) using bank tags [28,28,28,28]
certRow f89s4 on (rf89 4) using bank tags [28,28,28,28,28,35]
certRow f89s5 on (rf89 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f89s6 on (rf89 6) using bank tags []
certRow f89s7 on (rf89 7) using bank tags [1,31,1,1,1,35,35,6,35,6,6,35,6,35]
theorem f89 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,1,0,1,1] (.cons (f89s0) (.cons (f89s1) (.cons (f89s2) (.cons (f89s3) (.cons (f89s4) (.cons (f89s5) (.cons (f89s6) (.cons (f89s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
