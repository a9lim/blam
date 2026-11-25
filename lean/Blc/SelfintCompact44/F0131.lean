import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf713 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,3,0]
certRow f713s0 on (rf713 0) using bank tags [28,28,28,28]
certRow f713s1 on (rf713 1) using bank tags [3,3]
certRow f713s2 on (rf713 2) using bank tags [3,3,3,28,3,28,3,3,28,28,28,28,28,28]
certRow f713s3 on (rf713 3) using bank tags [3,28,28]
certRow f713s4 on (rf713 4) using bank tags [3,3,3,28,28,119,0] except [Floor44.e4846201478266]
certRow f713s5 on (rf713 5) using bank tags [3,28,28,28,28,28,28,28,28,28,28]
certRow f713s6 on (rf713 6) using bank tags [3,28,28,28]
certRow f713s7 on (rf713 7) using bank tags [3,3,28,28,28,28,24,24,0,24] except [Floor44.e4846341681274]
theorem f713 (hard : BadRow [Floor44.e4846341681274,Floor44.e4846201478266]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,1,3,0] (.cons (f713s0) (.cons (f713s1) (.cons (f713s2) (.cons (f713s3) (.cons (f713s4 (.cons (hard.get (by decide : Floor44.e4846201478266 ∈ [Floor44.e4846341681274,Floor44.e4846201478266])) .nil)) (.cons (f713s5) (.cons (f713s6) (.cons (f713s7 (.cons (hard.get (by decide : Floor44.e4846341681274 ∈ [Floor44.e4846341681274,Floor44.e4846201478266])) .nil)) .nil))))))))
private abbrev rf714 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,0,2]
certRow f714s0 on (rf714 0) using bank tags [3,3,3,3]
certRow f714s1 on (rf714 1) using bank tags [3,3,3,3,3,28,28,28,1,15]
certRow f714s2 on (rf714 2) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow f714s3 on (rf714 3) using bank tags [3,3,3,3,3,3,3]
certRow f714s4 on (rf714 4) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow f714s5 on (rf714 5) using bank tags [3,3,28,28]
certRow f714s6 on (rf714 6) using bank tags [3,3,28,28]
certRow f714s7 on (rf714 7) using bank tags [3,3,3,3,3,3,3,3,3,28,28,65,65]
theorem f714 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,0,2] (.cons (f714s0) (.cons (f714s1) (.cons (f714s2) (.cons (f714s3) (.cons (f714s4) (.cons (f714s5) (.cons (f714s6) (.cons (f714s7) .nil))))))))
private abbrev rf715 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,1,1]
certRow f715s0 on (rf715 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow f715s1 on (rf715 1) using bank tags [28,28,28,28,28,28,28,28,28,28,1,1]
certRow f715s2 on (rf715 2) using bank tags [3,3,28,28,28,28,28]
certRow f715s3 on (rf715 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f715s4 on (rf715 4) using bank tags [3,3,3,3,3]
certRow f715s5 on (rf715 5) using bank tags [3,3,3,3,3]
certRow f715s6 on (rf715 6) using bank tags [3,3,28,28,28,28,28]
certRow f715s7 on (rf715 7) using bank tags [3,3]
certRow f715s8 on (rf715 8) using bank tags [3,3,3,1]
certRow f715s9 on (rf715 9) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f715s10 on (rf715 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,232]
certRow f715s11 on (rf715 11) using bank tags [65,46,24,65,18]
theorem f715 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,1,1] (.cons (f715s0) (.cons (f715s1) (.cons (f715s2) (.cons (f715s3) (.cons (f715s4) (.cons (f715s5) (.cons (f715s6) (.cons (f715s7) (.cons (f715s8) (.cons (f715s9) (.cons (f715s10) (.cons (f715s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
