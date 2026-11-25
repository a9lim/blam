import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf801 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,3,1,0]
certRow f801s0 on (rf801 0) using bank tags [3,3]
certRow f801s1 on (rf801 1) using bank tags []
certRow f801s2 on (rf801 2) using bank tags [3,28,28,3,28,28,28,3,3,28,28,28,28]
certRow f801s3 on (rf801 3) using bank tags [3,28,3,28,28,3]
certRow f801s4 on (rf801 4) using bank tags []
certRow f801s5 on (rf801 5) using bank tags [28,28,28,28]
certRow f801s6 on (rf801 6) using bank tags [3,3,3,3]
certRow f801s7 on (rf801 7) using bank tags []
theorem f801 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,3,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,3,1,0] (.cons (f801s0) (.cons (f801s1) (.cons (f801s2) (.cons (f801s3) (.cons (f801s4) (.cons (f801s5) (.cons (f801s6) (.cons (f801s7) .nil))))))))
certRow f802 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,4,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf803 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,0,3]
certRow f803s0 on (rf803 0) using bank tags [28,28,28]
certRow f803s1 on (rf803 1) using bank tags [3,3,3,3,3]
certRow f803s2 on (rf803 2) using bank tags [28,28,28,28,28,28,28]
certRow f803s3 on (rf803 3) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f803s4 on (rf803 4) using bank tags []
certRow f803s5 on (rf803 5) using bank tags [3,3,28,28]
certRow f803s6 on (rf803 6) using bank tags [3,3,3,3,3,28,28]
certRow f803s7 on (rf803 7) using bank tags [3,3]
theorem f803 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,0,3] (.cons (f803s0) (.cons (f803s1) (.cons (f803s2) (.cons (f803s3) (.cons (f803s4) (.cons (f803s5) (.cons (f803s6) (.cons (f803s7) .nil))))))))
private abbrev rf804 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,1,2]
certRow f804s0 on (rf804 0) using bank tags [3,28,28,28]
certRow f804s1 on (rf804 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f804s2 on (rf804 2) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f804s3 on (rf804 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f804s4 on (rf804 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f804s5 on (rf804 5) using bank tags [3,3,3,3,28,28,28]
certRow f804s6 on (rf804 6) using bank tags [3,3,28,28,28]
certRow f804s7 on (rf804 7) using bank tags [3,3,3,3]
theorem f804 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,0,1,2] (.cons (f804s0) (.cons (f804s1) (.cons (f804s2) (.cons (f804s3) (.cons (f804s4) (.cons (f804s5) (.cons (f804s6) (.cons (f804s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
