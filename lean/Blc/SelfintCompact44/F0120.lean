import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf686 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,2,0]
certRow f686s0 on (rf686 0) using bank tags [28,28]
certRow f686s1 on (rf686 1) using bank tags [28,28,28,28,19]
certRow f686s2 on (rf686 2) using bank tags [28,28,28,28,28]
certRow f686s3 on (rf686 3) using bank tags [28,28,28,28]
certRow f686s4 on (rf686 4) using bank tags [28,28,28,28,28,28,28,28,6,215]
certRow f686s5 on (rf686 5) using bank tags []
certRow f686s6 on (rf686 6) using bank tags []
certRow f686s7 on (rf686 7) using bank tags [28,28,13,13,13,22,111,13,245]
theorem f686 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,4,2,0] (.cons (f686s0) (.cons (f686s1) (.cons (f686s2) (.cons (f686s3) (.cons (f686s4) (.cons (f686s5) (.cons (f686s6) (.cons (f686s7) .nil))))))))
private abbrev rf687 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,1,4]
certRow f687s0 on (rf687 0) using bank tags [28,28,28,28,28,28,28]
certRow f687s1 on (rf687 1) using bank tags [28,28,28,28,28]
certRow f687s2 on (rf687 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f687s3 on (rf687 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1]
certRow f687s4 on (rf687 4) using bank tags [28,28,28,28,28]
certRow f687s5 on (rf687 5) using bank tags [28,28,28,28,28,28]
certRow f687s6 on (rf687 6) using bank tags [28,28,28,28,28]
certRow f687s7 on (rf687 7) using bank tags [28,28,28,28]
certRow f687s8 on (rf687 8) using bank tags [28,28,28,28]
certRow f687s9 on (rf687 9) using bank tags [28,28,28,28,28]
certRow f687s10 on (rf687 10) using bank tags []
certRow f687s11 on (rf687 11) using bank tags [28,28,28,28,28,1,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,24,6,19]
theorem f687 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,1,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,1,4] (.cons (f687s0) (.cons (f687s1) (.cons (f687s2) (.cons (f687s3) (.cons (f687s4) (.cons (f687s5) (.cons (f687s6) (.cons (f687s7) (.cons (f687s8) (.cons (f687s9) (.cons (f687s10) (.cons (f687s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
