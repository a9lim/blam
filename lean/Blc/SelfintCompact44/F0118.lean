import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf680 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,0,3]
certRow f680s0 on (rf680 0) using bank tags [28,28]
certRow f680s1 on (rf680 1) using bank tags [28,28,28,28,28,19,19]
certRow f680s2 on (rf680 2) using bank tags [28,28,28]
certRow f680s3 on (rf680 3) using bank tags [28,28,28,28,28,28,28]
certRow f680s4 on (rf680 4) using bank tags []
certRow f680s5 on (rf680 5) using bank tags [28,28]
certRow f680s6 on (rf680 6) using bank tags []
certRow f680s7 on (rf680 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,22,6,6,6,22,6,22,6,6,6,31]
theorem f680 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,0,3] (.cons (f680s0) (.cons (f680s1) (.cons (f680s2) (.cons (f680s3) (.cons (f680s4) (.cons (f680s5) (.cons (f680s6) (.cons (f680s7) .nil))))))))
private abbrev rf681 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,1,2]
certRow f681s0 on (rf681 0) using bank tags [3,3,28,28,28,3,28,28,3,3,3,28,28,28,28,28,28]
certRow f681s1 on (rf681 1) using bank tags [28,28,28]
certRow f681s2 on (rf681 2) using bank tags [28,28,28,28,28,28]
certRow f681s3 on (rf681 3) using bank tags [3,3,28,28,28,28,3,28,28,28,28,3,3,3,28,3,28,28,3,3,3,28,28,28,28,28,28,3,3,28]
certRow f681s4 on (rf681 4) using bank tags []
certRow f681s5 on (rf681 5) using bank tags [3,3,28,28]
certRow f681s6 on (rf681 6) using bank tags [3,3,28,1]
certRow f681s7 on (rf681 7) using bank tags [3,28,28,28,28]
certRow f681s8 on (rf681 8) using bank tags [3,3]
certRow f681s9 on (rf681 9) using bank tags [28,28,28,28,28,28,28,28,28,19,19]
certRow f681s10 on (rf681 10) using bank tags [28,28,3,28,28,28,3,3,28,28]
certRow f681s11 on (rf681 11) using bank tags [3,3,28,13,26,13,13,13,13,26,6,13,1,1,1,1,1,1,16,35,6]
theorem f681 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,3,1,2] (.cons (f681s0) (.cons (f681s1) (.cons (f681s2) (.cons (f681s3) (.cons (f681s4) (.cons (f681s5) (.cons (f681s6) (.cons (f681s7) (.cons (f681s8) (.cons (f681s9) (.cons (f681s10) (.cons (f681s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
