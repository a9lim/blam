import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf741 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,1,3]
certRow f741s0 on (rf741 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f741s1 on (rf741 1) using bank tags [3,3,3,3,3]
certRow f741s2 on (rf741 2) using bank tags [3,3,28,28,28,28,28,28,28]
certRow f741s3 on (rf741 3) using bank tags [3,3,3,3,3,3,3,28,3,3,28,3,3,28,28,28,28,1,1,1,1,22,6,6,6,22,6]
certRow f741s4 on (rf741 4) using bank tags [3,3,3,3,3]
certRow f741s5 on (rf741 5) using bank tags [3,3,3,3,3,28,28]
certRow f741s6 on (rf741 6) using bank tags [3]
certRow f741s7 on (rf741 7) using bank tags [3,3,3,3]
certRow f741s8 on (rf741 8) using bank tags [28,28]
certRow f741s9 on (rf741 9) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f741s10 on (rf741 10) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f741s11 on (rf741 11) using bank tags [1]
theorem f741 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,1,3] (.cons (f741s0) (.cons (f741s1) (.cons (f741s2) (.cons (f741s3) (.cons (f741s4) (.cons (f741s5) (.cons (f741s6) (.cons (f741s7) (.cons (f741s8) (.cons (f741s9) (.cons (f741s10) (.cons (f741s11) .nil))))))))))))
private abbrev rf742 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,2,2]
certRow f742s0 on (rf742 0) using bank tags [3,3,3,3,3,3,28,28,28]
certRow f742s1 on (rf742 1) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f742s2 on (rf742 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f742s3 on (rf742 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,6,6,6,6,22,6,6,35,15,6]
certRow f742s4 on (rf742 4) using bank tags [3,3,3,3,3,6]
certRow f742s5 on (rf742 5) using bank tags [3,3,3,28,28,28]
certRow f742s6 on (rf742 6) using bank tags [3,3,3]
certRow f742s7 on (rf742 7) using bank tags [3,3,3]
certRow f742s8 on (rf742 8) using bank tags [3,3,28,28]
certRow f742s9 on (rf742 9) using bank tags [3,3,3,3,3,28,28]
certRow f742s10 on (rf742 10) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f742s11 on (rf742 11) using bank tags [28,28,28,28,28,32,1]
theorem f742 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,2,2] (.cons (f742s0) (.cons (f742s1) (.cons (f742s2) (.cons (f742s3) (.cons (f742s4) (.cons (f742s5) (.cons (f742s6) (.cons (f742s7) (.cons (f742s8) (.cons (f742s9) (.cons (f742s10) (.cons (f742s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
