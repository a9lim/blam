import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf746 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,1,2]
certRow f746s0 on (rf746 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f746s1 on (rf746 1) using bank tags [3,3,3,3,3,28,28,28,28,28,28]
certRow f746s2 on (rf746 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f746s3 on (rf746 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,6,35,19,19,16,19,6,35,6,26]
certRow f746s4 on (rf746 4) using bank tags [3,3,3,3,3,19]
certRow f746s5 on (rf746 5) using bank tags [3,3,3,3,28,28,28,28]
certRow f746s6 on (rf746 6) using bank tags [3,3,3,3]
certRow f746s7 on (rf746 7) using bank tags [3,3,3,3,3]
certRow f746s8 on (rf746 8) using bank tags [3,3,28,28,28,28]
certRow f746s9 on (rf746 9) using bank tags [3,3,3,3,3]
certRow f746s10 on (rf746 10) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f746s11 on (rf746 11) using bank tags [28,28,28,28,28,1,1]
theorem f746 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,1,2] (.cons (f746s0) (.cons (f746s1) (.cons (f746s2) (.cons (f746s3) (.cons (f746s4) (.cons (f746s5) (.cons (f746s6) (.cons (f746s7) (.cons (f746s8) (.cons (f746s9) (.cons (f746s10) (.cons (f746s11) .nil))))))))))))
private abbrev rf747 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,2,1]
certRow f747s0 on (rf747 0) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow f747s1 on (rf747 1) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow f747s2 on (rf747 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f747s3 on (rf747 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,45,6,19,6,16,19,22,26]
certRow f747s4 on (rf747 4) using bank tags [3,3,3,3,3]
certRow f747s5 on (rf747 5) using bank tags [3,3,3,3,28,28]
certRow f747s6 on (rf747 6) using bank tags [3,3,3,3,19,6]
certRow f747s7 on (rf747 7) using bank tags [3,3,3,3]
certRow f747s8 on (rf747 8) using bank tags [3,3]
certRow f747s9 on (rf747 9) using bank tags [3,3,3,3,3,3,3,28,28]
certRow f747s10 on (rf747 10) using bank tags [3,3,3,3,3,3,3,3,28,28]
certRow f747s11 on (rf747 11) using bank tags [30]
theorem f747 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,2,1] (.cons (f747s0) (.cons (f747s1) (.cons (f747s2) (.cons (f747s3) (.cons (f747s4) (.cons (f747s5) (.cons (f747s6) (.cons (f747s7) (.cons (f747s8) (.cons (f747s9) (.cons (f747s10) (.cons (f747s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
