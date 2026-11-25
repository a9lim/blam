import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf727 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,2,0,1]
certRow f727s0 on (rf727 0) using bank tags [3,28,28,3]
certRow f727s1 on (rf727 1) using bank tags [28,28,28,3]
certRow f727s2 on (rf727 2) using bank tags [28,3,3,28,28,3,28,28,28,28,218]
certRow f727s3 on (rf727 3) using bank tags [28,28,28,28,28,1,1]
certRow f727s4 on (rf727 4) using bank tags [28,28]
certRow f727s5 on (rf727 5) using bank tags [28,28,28,28,28,28]
certRow f727s6 on (rf727 6) using bank tags [3,3]
certRow f727s7 on (rf727 7) using bank tags [28,28,28,28,28,28,18,6,13,18,13]
theorem f727 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,2,0,1] (.cons (f727s0) (.cons (f727s1) (.cons (f727s2) (.cons (f727s3) (.cons (f727s4) (.cons (f727s5) (.cons (f727s6) (.cons (f727s7) .nil))))))))
private abbrev rf728 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,2,1,0]
certRow f728s0 on (rf728 0) using bank tags [3,28,28,3]
certRow f728s1 on (rf728 1) using bank tags [3,28]
certRow f728s2 on (rf728 2) using bank tags [3,28,28,28,28,3,28,3,28,28,3,28,28,28]
certRow f728s3 on (rf728 3) using bank tags [28,28,28,28,1]
certRow f728s4 on (rf728 4) using bank tags [28,28,3,28,22,218]
certRow f728s5 on (rf728 5) using bank tags [28,28,28,28,28,28]
certRow f728s6 on (rf728 6) using bank tags [3,3]
certRow f728s7 on (rf728 7) using bank tags [28,28,28,28,6,13,13,18]
theorem f728 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,2,1,0] (.cons (f728s0) (.cons (f728s1) (.cons (f728s2) (.cons (f728s3) (.cons (f728s4) (.cons (f728s5) (.cons (f728s6) (.cons (f728s7) .nil))))))))
certRow f729 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,3,0,0]) using bank tags [28,28,28,28,28,28,28]
private abbrev rf730 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,0,2]
certRow f730s0 on (rf730 0) using bank tags [28]
certRow f730s1 on (rf730 1) using bank tags [28,28,28,28,28]
certRow f730s2 on (rf730 2) using bank tags [28,28,28,28]
certRow f730s3 on (rf730 3) using bank tags [28,28]
certRow f730s4 on (rf730 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f730s5 on (rf730 5) using bank tags []
certRow f730s6 on (rf730 6) using bank tags [28,28]
certRow f730s7 on (rf730 7) using bank tags [13,13,13,13,13]
theorem f730 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,0,2] (.cons (f730s0) (.cons (f730s1) (.cons (f730s2) (.cons (f730s3) (.cons (f730s4) (.cons (f730s5) (.cons (f730s6) (.cons (f730s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
