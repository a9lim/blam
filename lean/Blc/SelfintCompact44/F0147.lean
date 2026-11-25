import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf763 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,0,2]
certRow f763s0 on (rf763 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28]
certRow f763s1 on (rf763 1) using bank tags [3,3,3,3,3,28,28,28,28,28,11,11]
certRow f763s2 on (rf763 2) using bank tags [3,3,28,28,28,28,28,28,28]
certRow f763s3 on (rf763 3) using bank tags [3,3,3,3,3,3,3,3,3,1,1,6,1,1]
certRow f763s4 on (rf763 4) using bank tags [3,3,3,3,3,71]
certRow f763s5 on (rf763 5) using bank tags [3,3,28,28]
certRow f763s6 on (rf763 6) using bank tags [3,3,3,3,3,3,3,3,3,28,28]
certRow f763s7 on (rf763 7) using bank tags [3,3,3]
certRow f763s8 on (rf763 8) using bank tags [3,3,3,3]
certRow f763s9 on (rf763 9) using bank tags [3,3,3,3,3,28]
certRow f763s10 on (rf763 10) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow f763s11 on (rf763 11) using bank tags [28,28,28]
theorem f763 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,0,2] (.cons (f763s0) (.cons (f763s1) (.cons (f763s2) (.cons (f763s3) (.cons (f763s4) (.cons (f763s5) (.cons (f763s6) (.cons (f763s7) (.cons (f763s8) (.cons (f763s9) (.cons (f763s10) (.cons (f763s11) .nil))))))))))))
private abbrev rf764 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,1,1]
certRow f764s0 on (rf764 0) using bank tags [3]
certRow f764s1 on (rf764 1) using bank tags [3,28,28,11,11]
certRow f764s2 on (rf764 2) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,32]
certRow f764s3 on (rf764 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f764s4 on (rf764 4) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f764s5 on (rf764 5) using bank tags [3,3,3,3,28,28,28]
certRow f764s6 on (rf764 6) using bank tags [3,3,28,28,28,28]
certRow f764s7 on (rf764 7) using bank tags [3,3,32,1]
theorem f764 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,1,1] (.cons (f764s0) (.cons (f764s1) (.cons (f764s2) (.cons (f764s3) (.cons (f764s4) (.cons (f764s5) (.cons (f764s6) (.cons (f764s7) .nil))))))))
private abbrev rf765 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,2,0]
certRow f765s0 on (rf765 0) using bank tags [3,3,3,3]
certRow f765s1 on (rf765 1) using bank tags [3,3,3,3,3]
certRow f765s2 on (rf765 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f765s3 on (rf765 3) using bank tags [3,3,3,3,3,3,3]
certRow f765s4 on (rf765 4) using bank tags [3,3,32,1]
certRow f765s5 on (rf765 5) using bank tags [3,28,28,28,28,28,28,28,28,28,28,28]
certRow f765s6 on (rf765 6) using bank tags [3,3,3,3,3,28]
certRow f765s7 on (rf765 7) using bank tags [32,6,1,1]
theorem f765 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,2,2,0] (.cons (f765s0) (.cons (f765s1) (.cons (f765s2) (.cons (f765s3) (.cons (f765s4) (.cons (f765s5) (.cons (f765s6) (.cons (f765s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
